data {
  int<lower=0> N;
  
}
generated quantities { 
    real temp[N];
    real icecream_sales[N]; 
    real sunspot_count[N]; 
    
    for (i in 1:N) {
        temp[i] = normal_rng(15, 10);
    }
    for (i in 1:N) {
        icecream_sales[i] = binomial_rng(N, inv_logit(0.2 * temp[i] - 5)); 
        sunspot_count[i] = binomial_rng(N, inv_logit(0.2 * temp[i] - 10)); 
    }
}