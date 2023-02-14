check_data <- function() {
    if (NROW(dd) != 1846) {
        warning("Missing dataset `dd`.")
    } else if (NROW(gap) != 2405) {
        warning("Missing dataset `gap`.")
    } else if (NROW(heights) != 1050) {
        warning("Missing dataset `heights`.")
    } else if (NROW(alg_scores) != 131172) {
        warning("Missing dataset `alg_scores`.")
    } else if (NROW(wapo_vac) != 16065) {
        warning("Missing dataset `wapo_vac`.")
    } else {
        print("All datasets loaded.")
    }
}
