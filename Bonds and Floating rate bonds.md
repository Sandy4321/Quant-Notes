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

- Let $p_k$ be the price of contracts paying $r_{k-1} F$ at time k.
- Let P be the Price of principle F at time $n = \frac{F}{(1+r)^n}$

