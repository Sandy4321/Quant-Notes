##Forward Contracts

A forward contract gives the buyer the right and also the obligtion to purchase
- a specified amount of an asset- at a specified time `T`- at a specified price `F` (called the forward price) set at time t = 0

###Determining the forward price of a contract

Lets set the forward price F for a forward contract at time t = 0 for 1 unit of an asset 

- with asset price $S_t$ at time `t`
- and maturity `T`

Now a few term introductions

- To have a *long position* on a forward contract means you must purchase the asset at time `T` and price `F`, so you are the buyer.
- Spot price of an asset: $S_T$
- $f_t$ is the value / contract price of the long position in the contract.

So if at time T, $$f_T = S_T - F$$ then the buyer can make a profit of $f_T$ per contract, by buying the shares at F and selling at $S_T$

The **Forward Price** is set so that the value at $t=0$ is $f_0 = 0$

###Short Selling

Short selling is the selling of shares in a stock that the seller doesn’t own. 

- The seller borrows the shares from the broker- The shares comes from the brokerage’s own inventory- The shares are sold and the proceeds are credited to the seller’s account
- The seller buys back the shares at some later time and **covers** the short.

This way, shorting a stock

- results in a profit if price drops
- results in a loss if price rises

However, while the potential profit with shorting is bounded (max is price drops to 0), the potential loss can be very large and is unbounded.

###Setting the Forward contract price

For simplification, lets assume the asset has to intermediate cash flows, like dividends or storage costs.

Portfolio:

- Buy forward contract
- Short sell the underlying security
- Lend $S_0$ upto time `T`Cash Flow | t = 0 | t = T |
 :--------:  | :-----: | :----:|
 Buy Forward Contract|$f_0 = 0$|$f_T = S_T - F$|
Short sell and cover at time T |  $S_0$  |  $-S_T$ | 
Lend upto time T |  $-S_0$  |  $\frac{S_0}{d(0,T)}$ |
Net Cashflow |  $0$  |  $\frac{S_0}{d(0,T)} - F$ |

where $d(0,T)$ is the cumulative interest accrued upto time T, given that it changes yearly.

$$d(0,1) = \frac{1}{(1+r_{eff})^T} = \frac{1}{1+r_0}\frac{1}{1+r_1}...\frac{1}{1+r_{T-1}}$$

- For there to be no arbritage deterministically, if the price at $t=0$ is $0$, then net deterministic cash flow at $t = T$ should also be $0$ 

- So that any profit/loss that does occur at later times is undetermined at present time and not due to mispricing of the contract.

Hence, $$F = \frac{S_0}{d(0,T)} > S_0$$