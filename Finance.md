# Interest Rates and Compounding

Taking a dollar today vs taking a dollar next year

- In all cases, taking a dollar today makes sense since it can be put into a bank to accrue interest rate.
   	- the exception is in the case of negative interest rates, as was in 2010 in Switzerland.

---------

Suppose an amount `N` is deposited at a rate of interest `r` per annum, `compounded annually`

- After 1 year, the account balance is N(1+r)
- After T years, it's $N(1+r)^T$

- N is the `notional/principle`. And we usually take it as 1 for simplicity.

### Non-Annual Compounding

If we invest `1` at interest rate `r`, compounded `semi annually`

- After 6 months, we have $(1+r/2)$
- After T years, we have $(1+r/2)^{2T}$

Likewise, for `1` invested at rate `r`, and compounded `m times annually`

- After T years, has a balance of $(1+r/m)^{mT}$

### Continuous Compounding

If we increase the number of times compounded infinitely, such that $m \rightarrow \infty$, the balance after T years will be $$B = \lim_{m \rightarrow \infty} \big(1+\frac{r}{m}\big)^{mT} $$

The above expression can be solved using Taylor expansion.

$$B = 1+ \frac{r}{m} (mT) + \frac{1}{2!} \frac{r^2}{m^2} (mT)(mT-1) +...+ \frac{1}{n!} \frac{r^n}{m^n} \big[(mT)..(mT-n+1)\big] +.. $$

$$ \Rightarrow B = 1+ rT + \frac{r^2T^2}{2!} \lim_{m\rightarrow \infty}\big(1-\frac{1}{mT}\big) +...+ \frac{r^nT^n}{n!} \lim_{m\rightarrow \infty}\big(1-\frac{1}{mT}\big)...\big(1-\frac{n-1}{mT}\big)+...$$

As the limit terms go to 1.

$$ \Rightarrow B = 1+ rT + \frac{r^2T^2}{2!} +...+ \frac{r^nT^n}{n!}... = e^{rT} $$

Hence with continuous compounding at rate `r`, the amount `1` becomes `1. e^{rT}` after `T` years.

##Zero Coupon bonds and Discounting

**Zero coupon bond (ZCB) with maturity T** is an asset that pays `1` at Time `T` and nothing else. 

Let Z(t,T) be the price at current time of a ZCB with maturity T, for t $\leq$ T. 

| Then Z(T,T) = 1, by definition.

###Argument of no arbritage

**Suppose the continuously compounded interest rate from t until T is a constant r. Then we have** $$Z(t,T) = e^{-r(T-t)}$$ 

This can be seen from the following argument

*Portfolio A*: One zero coupon bond with maturity T
*Portfolio B*: e^{-r(T-t)} of cash, which we deposit at r

Both portfolio's are worth 1 at time T. Using the argument of no arbritrage, this means that both must be worth the same at time t.

## The No-Arbritage Condition

Suppose a contract where
- you pay a price `p` at t=0
- you recieve `c_k` at time t = k, k = 1,2..T (c_k can be negative)

Then the no arbritrage condition bounds the prove for this contract

**Weak no-arbritage condition**

If $c_k \geq 0$ for all $k > 1$

$\Rightarrow p \geq 0$

Or that if there are positive returns $c_k$ for a buyer that paid $p < 0$, its a free lunch. In a liquid market, the seller should be able to increase the price p to a value > 0  and still find buyers competing for the asset.

**Strong no-arbritage condition**

 If $c_k \geq 0$ for all $k > 1$  and $c_l > 0$ for some $l \geq 1$

$\Rightarrow p > 0$

Or that, there is free lunch for p $\leq$ 0, as there exists a $c_l > 0$. In a free market, there will be buyers willing to pay $p>0$ for this asset.  

*There are implicit assumptions that we make above:*

- Markets are liquid and there are sufficient number of buyers and sellers
- Price information is available to all buyers and sellers

###Determining the present price of Portfolios

- Take a portfolio and denote its current price with `p`
- Let's denote the payouts of the portfolio at time t = k as $c_k$ where k = 1,2,3...
- Lets suppose we buy the portfolio and also borrow an amount $\frac{c_k}{(1+r)^k}$ upto time $t_k$.

 Cash Flow | t = 0 | t = 1 | t = 2 | t = k | t = T |
 :--------:  |  ---- | ----- | ------| ----- | ----- |
 Contract Payouts|$-p + c_0$ | $c_1$ | $c_2$ | $c_k$|$c_T$|
Brrwd $\frac{c_1}{1+r}$|$\frac{c_1}{1+r}$ | $-c_1$ || ||
Brrwd $\frac{c_2}{(1+r)^2}$|$\frac{c_2}{(1+r)^2}$||$-c_2$|||
Brrwd $\frac{c_k}{(1+r)^k}$|$\frac{c_k}{(1+r)^k}$|||$-c_k$||
Brrwd $\frac{c_T}{(1+r)^T}$|$\frac{c_T}{(1+r)^T}$||||$-c_T$|

Hence, the total cashflow always cancels out for $t>0$. The total cashflow occuring thus can be written as:

$$CF =  -p+c_0 + \frac{c_1}{1+r} + \frac{c_2}{(1+r)^2}...+ \frac{c_k}{(1+r)^k} + \frac{c_T}{(1+r)^T}  $$

From the weak no-arbritage condition, we can say that

- Total Portfolio cash flows = 0, for $t > 1$
- Hence, price of portfolio or price paid at t = 0 i.e.  

$$p - c_o - \frac{c_2}{1+k} -  ...- \frac{c_k}{(1+r)^k} - \frac{c_T}{(1+r)^T}\geq 0$$
 
$$\Rightarrow p \geq \sum_{k=0}^T \frac{c_k}{(1+r)^k} $$

**To obtain the upper bound, we reverse the portfolio such that we are on the sell side**

- So we need to make payouts worth $c_k$ for $t > 0$
- And we lend $\frac{c_k}{(1+r)^k}$ upto a time $t = k$

 Cash Flow | t = 0 | t = 1 | t = 2 | t = k | t = T |
 :--------:  |  ---- | ----- | ------| ----- | ----- |
 Contract Payouts|$p - c_0$ | $-c_1$|$-c_2$|$-c_k$|$-c_T$|
Lend $\frac{c_1}{1+r}$|$\frac{-c_1}{1+r}$ | $c_1$ || ||
Lend $\frac{c_2}{(1+r)^2}$|$\frac{-c_2}{(1+r)^2}$||$c_2$|||
Lend $\frac{c_k}{(1+r)^k}$|$\frac{-c_k}{(1+r)^k}$|||$c_k$||
Lend $\frac{c_T}{(1+r)^T}$|$\frac{-c_T}{(1+r)^T}$||||$c_T$|

As before, the cash flow = 0, for $t>0$

Hence, according the the weak no-arbritrage condition

the price of the portfolio, or the net amount paid at t=0, should be $\geq 0$

$$- p + c_o + \frac{c_2}{1+k} + ...+ \frac{c_k}{(1+r)^k} + \frac{c_T}{(1+r)^T}\geq 0$$
 
$$\Rightarrow p \leq \sum_{k=0}^T \frac{c_k}{(1+r)^k} $$

**Together the two bounds give us the price,** $$p = \sum_{k=0}^T \frac{c_k}{(1+r)^k}$$

In the cases where lending and borrowing rates are different, we get a spread of possible portfolio prices
$$  $$