/*
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/* global getAssetRegistry getFactory emit query */

/**
 * Track the trade of a commodity from one trader to another
 * @param {org.uos.kllck.Trade} trade - the trade to be processed
 * @transaction
 */
async function tradeCommodity(trade) { // eslint-disable-line no-unused-vars

    const assetRegistry = await getAssetRegistry('org.uos.kllck.Commodity');
    // check customers money
    if(trade.customer.tokenValue < trade.commodity.price){
        const tradeNotification = getFactory().newEvent('org.uos.kllck','TradeNotification');
        tradeNotification.result = "Error : Not enough money";
        tradeNotification.commodity = trade.commodity;
        emit(tradeNotification);
    }

    trade.commodity.owner.tokenValue += trade.commodity.price;
    trade.customer.tokenValue -= trade.commodity.price;
    
    // emit a notification that a trade has occurred
    const tradeNotification = getFactory().newEvent('org.uos.kllck', 'TradeNotification');
    tradeNotification.result = "Trade Success!";
    tradeNotification.commodity = trade.commodity;
    emit(tradeNotification);

    // persist the state of the commodity
    await assetRegistry.update(trade.commodity);
}
