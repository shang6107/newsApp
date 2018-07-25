package com.cxgc.news_app;


import java.util.*;

/**
 * @author 上官炳强
 * @description
 * @since 2018-07-25 / 07:47:07
 */
public class MyTest {
    private static List<int[]> ints = new ArrayList<>();

    public static void main(String[] args) {

        int[] nums = {22, 22, 22, 22};
//        for (int i = 0; i < args.length; i++) {
//            nums[i] = Integer.parseInt(args[i]);
//        }

        allSumbol();
        List<int[]> expre = new ArrayList<>();
        for (int[] anInt : ints) {
            expre.add(crossfix(nums, anInt));
        }


        for (int[] ints1 : expre) {

        }


    }


    public static int accordingSym(Pos pos, int[] ints1, StringBuilder s) {
        int sum = 0;
        if (pos.symbol == 2) {
            sum = ints1[pos.pos - 1] * ints1[pos.pos + 1];
            s.append("*,");
        } else if (pos.symbol == 3) {
            sum = ints1[pos.pos - 1] / ints1[pos.pos + 1];
            s.append("/,");
        }
        return sum;
    }

    // 2 + 6 * 5 / 3
    //count = {0=/,}
    public void test2() {
        int[] ints = {2, 0, 6, 2, 5, 3, 3};
        Map<Integer, String> count = count(ints);
        System.out.println("count = " + count);
    }

    public static Map<Integer, String> count(int[] ints1) {
        int sum = 0;
        StringBuilder expre = new StringBuilder();
        List<Pos> index = new ArrayList<>();
        List<Integer> now = new ArrayList<>();
        List<Integer> hasIndex = new ArrayList<>();
        Map<Integer, String> map = new HashMap<Integer, String>();
        for (int i = 1; i < ints1.length; i += 2) {
            if (ints1[i] == 2 || ints1[i] == 3) {
                index.add(new Pos(i, ints1[i]));
                hasIndex.add(i);
            }
        }
        for (int i = 0; i < index.size(); i++) {
            Pos pos = index.get(i);
            if (i == 0) {//第一个
                int i1 = accordingSym(pos, ints1, expre);
                now.add(i1);
                sum = i1;
            } else {//多个
                if (pos.pos == index.get(i - 1).pos + 2) {
                    if (pos.symbol == 2) {
                        sum *= ints1[pos.pos + 1];
                        expre.append("*,");
                    } else if (pos.symbol == 3) {
                        expre.append("/,");
                        sum /= ints1[pos.pos + 1];
                    }
                } else {
                    now.add(accordingSym(pos, ints1, expre));
                }
            }
        }

        if (index.size() == 0) {
            for (int i = 1; i < ints1.length; i += 2) {
                if (i == 1) {
                    switch (ints1[i]) {
                        case 0:
                            sum = ints1[i - 1] + ints1[i + 1];
                            expre.append("+,");
                            break;
                        case 1:
                            sum = ints1[i - 1] - ints1[i + 1];
                            expre.append("-,");
                            break;
                        case 2:
                            sum = ints1[i - 1] * ints1[i + 1];
                            expre.append("*,");
                            break;
                        case 3:
                            sum = ints1[i - 1] / ints1[i + 1];
                            expre.append("/,");
                            break;
                    }
                }
                else {
                    switch (ints1[i]) {
                        case 0:
                            sum += ints1[i + 1];
                            expre.append("+,");
                            break;
                        case 1:
                            sum -= ints1[i + 1];
                            expre.append("-,");
                            break;
                        case 2:
                            sum *= ints1[i + 1];
                            expre.append("*,");
                            break;
                        case 3:
                            sum /= ints1[i + 1];
                            expre.append("/,");
                            break;
                    }
                }
            }
        }
        else if (index.size() == 2) {
            List<Integer> integers = new ArrayList<Integer>(){{
                add(1);
                add(3);
                add(5);
            }};

            Iterator<Integer> iterator = integers.iterator();
            while (iterator.hasNext()){
                if(hasIndex.contains(iterator.next())){
                    iterator.remove();
                }
            }


            int remainInt = integers.get(0);
            if(remainInt == 1){
                if(ints1[remainInt] == 0){
                    sum += ints1[remainInt - 1] ;
                    expre.append("+,");
                }else if(ints1[remainInt] == 1){
                    sum = ints1[remainInt - 1] - sum;
                    expre.append("-,");
                }
            }else if(remainInt == 3){
                if(ints1[remainInt] == 0){
                    sum = now.get(0) + now.get(1);
                    expre.append("+,");
                }else if(ints1[remainInt] == 1){
                    sum = now.get(0) - now.get(1);
                    expre.append("-,");
                }
            }else if(remainInt == 5){
                if(ints1[remainInt] == 0){
                    sum += ints1[remainInt + 1] ;
                    expre.append("+,");
                }else if(ints1[remainInt] == 1){
                    sum -= ints1[remainInt + 1];
                    expre.append("-,");
                }
            }
        }


        map.put(sum, expre.toString());
        return map;
    }

    // 1 + 1 + 6 / 2   3 22 1 22 1 22 3
// 1 * 1 + 6 / 2
    static class Pos {
        int pos;
        int symbol;

        Pos(int pos, int symbol) {
            this.pos = pos;
            this.symbol = symbol;
        }
    }

    public static void allSumbol() {
        for (int i = 0; i < 4; i++) {
            int[] arr = new int[3];
            for (int j = 0; j < 4; j++) {
                for (int k = 0; k < 4; k++) {
                    arr[0] = i;
                    arr[1] = k;
                    arr[2] = j;
                    ints.add(arr);
                    arr = new int[3];
                }
            }
        }
    }

    public static int[] crossfix(int data[], int data1[]) {
        int result[] = new int[data.length + data1.length];
        int common = Math.min(data.length, data1.length);
        int long_data[] = data.length > data1.length ? data : data1;
        int max = long_data.length;
        int j = 0;
        for (int i = 0; i < common; i++) {
            result[j++] = data[i];
            result[j++] = data1[i];
        }
        for (int i = common; i < max; i++) {
            result[j++] = long_data[i];
        }
        return result;
    }
// 1 + 2 + 2 + 2



/*
switch (ints1[i]){
                case 0 :
                    sum = ints1[i - 1] + ints1[i + 1];
                    expre += "+,";
                    break;
                case 1 :
                    sum = ints1[i - 1] - ints1[i + 1];
                    expre += "-,";
                    break;
                case 2 :
                    sum = ints1[i - 1] * ints1[i + 1];
                    expre += "*,";
                    break;
                case 3 :
                    sum = ints1[i - 1] / ints1[i + 1];
                    expre += "/,";
                    break;
            }
 */


}
