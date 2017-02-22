/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

#include <gtest/gtest.h>
#include "add.h"

TEST(BasicTest, TestEQ0) {
    EXPECT_EQ(add(1, 1), 2);
}
