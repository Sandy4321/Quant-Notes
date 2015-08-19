##Bonds

*Primary features of a Bond*

- **Face Value** `F` (usually 100/1000)
- **Coupon Rate** $\alpha$, pays $c = \alpha F/2$ every six months 
- **Maturity** `T`, Date of payment of Face value and the last coupon
- **Price** `P`
- **Quality Rating**, S&P Ratings AAA, AA, BBB, BB, CCC, CC.

An important but not entirely significant coglomarate of these variables is the *Yield factor* which can help compare different bonds.

**Yield to maturity, $\lambda$**

An expression used to evaluate $\lambda$ is, 

$$ P = \sum_{k=1}^{2T} \frac{c}{(1+\lambda/2)^k} + \frac{F}{(1+\lambda/2)^{2T}}$$ 

thus it is the effective annual interest rate at which P is the present value of the coupon payments.

- Thus, if a bond has a low price, it might have a high yield to maturity, thus effectively a lower quality (risk-wise)

##Linear Pricing

Assuming the no-arbritage condition, lets take two contracts

- A contract priced $p_A$ has cash flow $c_A$
- A contract priced $p_B$ has cash flow $c_B$

Then the contract with cashflow $c = c_A + c_B$ must be equal to $p = p_A + p_B$

To prove this one can assume $p_A+p_B < p$, in which case one can purchase contracts A and B separately and sell them together at the greater price, p thus generating a free lunch. Since we assume there to be no such arbritrage opportunies, the above case is not valid. Hence $p_A + p_B \geq p$

Similarly, we can show the case where $p_A + p_B > p$, to also be invalid.

This proves the linear pricing condition, i.e. for two cash flows $c_A$ and $c_B$ with prices $p_A$ and $p_B$, 

A cash flow $c = c_A + c_B$ , must be priced at $p = p_A + p_B$ to avoid arbritrage opportunities.

##Floating rate Bonds
Usually, interest rates vary from year to year dependign on market situation and other world events. In this case, it is a bit more complicated to price securities deterministically at the present time.

Lets say that the interest rate, $r_k$ for a period $[k, k+1)$ is decided at $t = k$, 

- Hence, the exact value of $r_k$ becomes known only at $t = k$ 
- One period loans issued in period k, to be repaid in period k+1, are charged the interest rate $r_k$ 


Now the cash flow of a *floating rate bond* will be given by

- coupon payment at time k: $r_{k-1} F$
- Face value payment at time n : F

**Computing the arbritrage free price $P_f$ of a floating rate bond**

Using linear pricing, lets split up the cash flow of the bond into simpler cash flows

- Let $p_k$ be the price of contracts paying $r_{k-1} F$ each at time k.
- Let P be the price of principle F at time $n = \frac{F}{(1+r)^n}$

Hence Price of floating rate boad will be the linear sum of the individual contract prices 
$$ P_f = P + \sum_{k=1}^n p_k $$

To determine the price of the bond, lets construct a portfolio with a deterministic cash flow.

Cash Flow | t = 0 | t = k-1 | t = k |
 :--------:  | :-----: | :-------: | :----:|
 Buy Contract $p_k$|$-p_k$| |$r_{k-1} F$|
Brrw $\alpha$ over $[0,k-1]$|$\alpha$|$-\alpha  (1+r_0)^{k-1}$|| 
Brrw $-\alpha  (1+r_0)^{k-1}$ over $[k-1,k]$| |$\alpha  (1+r_0)^{k-1}$|$-\alpha (1+r_0)^{k-1}(1+r_{k-1})$|
Lend $\alpha$ from $[0,k]$ |  $-\alpha$  |  |$\alpha (1+r_0)^{k}$ |

There are obviously other contracts $p_0 \rightarrow p_n$ that we are not writing here, we will generalize to all $k$ from $p_k$

Total Cask flow at $t=k$: 

$$CF(k) = - \alpha (1+r_0)^{k-1}(1+r_{k-1}) + \alpha (1+r_0)^{k} + r_{k-1} F$$

$$ = - \alpha (1+r_0)^{k-1}[(1+r_{k-1}) - (1+r_0)] + r_{k-1} F$$

$$ = - \alpha (1+r_0)^{k-1}[r_{k-1} - r_0] + r_{k-1} F$$

$$ =  \underbrace{r_{k-1}}_{\text{undeterministic}}[F - \alpha (1+r_0)^{k-1}] + \underbrace{\alpha r_0 (1+r_0)^{k-1}}_{\text{deterministic}} $$

The undeterministic term can be gotten rid of by choosing $\alpha$ such that $$\alpha = \frac{F}{(1+r_0)^{k-1}}$$ which leaves us with $$CF = \alpha r_0 (1+r_0)^{k-1} $$

or $$CF(k) = \Big( \frac{F}{(1+r_0)^{k-1}}\Big) r_0 (1+r_0)^{k-1} - p_k$$

$$CF(k) = F r_0 $$

- Now we had split each coupon payment into a separate contract 
- and the only coupon payment coming at $t=k$ is from contract $p_k$
- So, a coupon that pays $r_0 F$ at $t=k$ will have the price/value, $p_k$ at $t=0$ given by $$p_k = \frac{r_0 F}{(1+r_0)^{k}}$$

Hence substituting in the price formula of the portfolio

$$P_f = P + \sum_{k=1}^n p_k $$

$$P_f = \frac{F}{(1+r_0)^{n}} + \sum_{k=1}^n \frac{r_0 F}{(1+r_0)^{k}} $$

$$=\frac{F}{(1+r_0)^{n}} + \frac{r_0 F}{1+r_0} \Big\{ 1. \frac{1}{(1+r_0)^{1}}... \frac{1}{(1+r_0)^{n}} \Big\} $$

$$= \frac{F}{(1+r_0)^{n}} + \frac{r_0 F}{1+r_0} \Big\{ \frac{1-\frac{1}{(1+r_0)^{n}}}{1 - \frac{1}{(1+r_0)^{n}} } \Big\} $$

$$= \frac{F}{(1+r_0)^{n}} + \frac{r_0 F}{(1+r_0)^n} \Big\{ \frac{(1+r_0)^{n}-1}{r_0} \Big\} $$

$$= \frac{F}{(1+r_0)^{n}} +  F -  \frac{F}{(1+r_0)^{n}}$$

$$\Rightarrow P_n = F$$

Viola! The Price of a floating rate bond is equal to its face value.

##Spot Rates

Lets say there is a loan maturing in t years, its spot rate $s_t$

- If we get an amount A back in t years, then the present value of this bond is $$P.V. = \frac{A}{(1+s_k)^t}$$

This leads us to define **Discount rate**, $$D = \frac{1}{(1+s_k)^t}$$ 

Thus if we are given the price of a bond and its Face value, we can determine its discount rate. 

