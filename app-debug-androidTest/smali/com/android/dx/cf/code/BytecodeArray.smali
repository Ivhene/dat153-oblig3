.class public final Lcom/android/dx/cf/code/BytecodeArray;
.super Ljava/lang/Object;
.source "BytecodeArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;,
        Lcom/android/dx/cf/code/BytecodeArray$BaseVisitor;,
        Lcom/android/dx/cf/code/BytecodeArray$Visitor;
    }
.end annotation


# static fields
.field public static final EMPTY_VISITOR:Lcom/android/dx/cf/code/BytecodeArray$Visitor;


# instance fields
.field private final bytes:Lcom/android/dx/util/ByteArray;

.field private final pool:Lcom/android/dx/rop/cst/ConstantPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/android/dx/cf/code/BytecodeArray$BaseVisitor;

    invoke-direct {v0}, Lcom/android/dx/cf/code/BytecodeArray$BaseVisitor;-><init>()V

    sput-object v0, Lcom/android/dx/cf/code/BytecodeArray;->EMPTY_VISITOR:Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/util/ByteArray;Lcom/android/dx/rop/cst/ConstantPool;)V
    .locals 2
    .param p1, "bytes"    # Lcom/android/dx/util/ByteArray;
    .param p2, "pool"    # Lcom/android/dx/rop/cst/ConstantPool;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    if-eqz p1, :cond_1

    .line 63
    if-eqz p2, :cond_0

    .line 67
    iput-object p1, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    .line 68
    iput-object p2, p0, Lcom/android/dx/cf/code/BytecodeArray;->pool:Lcom/android/dx/rop/cst/ConstantPool;

    .line 69
    return-void

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private parseLookupswitch(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 12
    .param p1, "offset"    # I
    .param p2, "visitor"    # Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    .line 871
    add-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, -0x4

    .line 874
    .local v0, "at":I
    const/4 v1, 0x0

    .line 875
    .local v1, "padding":I
    add-int/lit8 v2, p1, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 876
    shl-int/lit8 v3, v1, 0x8

    iget-object v4, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v4, v2}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    or-int v1, v3, v4

    .line 875
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 879
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v2, v0}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v2

    add-int/2addr v2, p1

    .line 880
    .local v2, "defaultTarget":I
    iget-object v3, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v0, 0x4

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v9

    .line 881
    .local v9, "npairs":I
    add-int/lit8 v0, v0, 0x8

    .line 883
    new-instance v3, Lcom/android/dx/cf/code/SwitchList;

    invoke-direct {v3, v9}, Lcom/android/dx/cf/code/SwitchList;-><init>(I)V

    move-object v10, v3

    .line 884
    .local v10, "cases":Lcom/android/dx/cf/code/SwitchList;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v9, :cond_1

    .line 885
    iget-object v4, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v4, v0}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v4

    .line 886
    .local v4, "match":I
    iget-object v5, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v6}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v5

    add-int/2addr v5, p1

    .line 887
    .local v5, "target":I
    add-int/lit8 v0, v0, 0x8

    .line 888
    invoke-virtual {v10, v4, v5}, Lcom/android/dx/cf/code/SwitchList;->add(II)V

    .line 884
    .end local v4    # "match":I
    .end local v5    # "target":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 890
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v10, v2}, Lcom/android/dx/cf/code/SwitchList;->setDefaultTarget(I)V

    .line 891
    invoke-virtual {v10}, Lcom/android/dx/cf/code/SwitchList;->removeSuperfluousDefaults()V

    .line 892
    invoke-virtual {v10}, Lcom/android/dx/cf/code/SwitchList;->setImmutable()V

    .line 894
    sub-int v11, v0, p1

    .line 895
    .local v11, "length":I
    const/16 v4, 0xab

    move-object v3, p2

    move v5, p1

    move v6, v11

    move-object v7, v10

    move v8, v1

    invoke-interface/range {v3 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitSwitch(IIILcom/android/dx/cf/code/SwitchList;I)V

    .line 898
    return v11
.end method

.method private parseNewarray(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 13
    .param p1, "offset"    # I
    .param p2, "visitor"    # Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    .line 909
    iget-object v0, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v0

    .line 911
    .local v0, "value":I
    packed-switch v0, :pswitch_data_0

    .line 945
    new-instance v1, Lcom/android/dx/cf/code/SimException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bad newarray code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 946
    invoke-static {v0}, Lcom/android/dx/util/Hex;->u1(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 941
    :pswitch_0
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->LONG_ARRAY:Lcom/android/dx/rop/cst/CstType;

    .line 942
    .local v1, "type":Lcom/android/dx/rop/cst/CstType;
    goto :goto_0

    .line 937
    .end local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    :pswitch_1
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    .line 938
    .restart local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    goto :goto_0

    .line 933
    .end local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    :pswitch_2
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->SHORT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    .line 934
    .restart local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    goto :goto_0

    .line 929
    .end local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    :pswitch_3
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->BYTE_ARRAY:Lcom/android/dx/rop/cst/CstType;

    .line 930
    .restart local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    goto :goto_0

    .line 921
    .end local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    :pswitch_4
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->DOUBLE_ARRAY:Lcom/android/dx/rop/cst/CstType;

    .line 922
    .restart local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    goto :goto_0

    .line 925
    .end local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    :pswitch_5
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->FLOAT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    .line 926
    .restart local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    goto :goto_0

    .line 917
    .end local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    :pswitch_6
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->CHAR_ARRAY:Lcom/android/dx/rop/cst/CstType;

    .line 918
    .restart local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    goto :goto_0

    .line 913
    .end local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    :pswitch_7
    sget-object v1, Lcom/android/dx/rop/cst/CstType;->BOOLEAN_ARRAY:Lcom/android/dx/rop/cst/CstType;

    .line 914
    .restart local v1    # "type":Lcom/android/dx/rop/cst/CstType;
    nop

    .line 951
    :goto_0
    invoke-interface {p2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->getPreviousOffset()I

    move-result v2

    .line 952
    .local v2, "previousOffset":I
    new-instance v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;

    invoke-direct {v3, p0}, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;-><init>(Lcom/android/dx/cf/code/BytecodeArray;)V

    .line 953
    .local v3, "constantVisitor":Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;
    const/4 v4, 0x0

    .line 959
    .local v4, "arrayLength":I
    if-ltz v2, :cond_0

    .line 960
    invoke-virtual {p0, v2, v3}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 961
    iget-object v5, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/android/dx/rop/cst/Constant;

    instance-of v5, v5, Lcom/android/dx/rop/cst/CstInteger;

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v5, v2

    if-ne v5, p1, :cond_0

    .line 963
    iget v4, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->value:I

    .line 979
    :cond_0
    const/4 v5, 0x0

    .line 980
    .local v5, "nInit":I
    add-int/lit8 v6, p1, 0x2

    .line 981
    .local v6, "curOffset":I
    move v7, v6

    .line 982
    .local v7, "lastOffset":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 984
    .local v8, "initVals":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/Constant;>;"
    if-eqz v4, :cond_8

    .line 986
    :goto_1
    const/4 v9, 0x0

    .line 989
    .local v9, "punt":Z
    iget-object v10, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v11, v6, 0x1

    .end local v6    # "curOffset":I
    .local v11, "curOffset":I
    invoke-virtual {v10, v6}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 990
    .local v6, "nextByte":I
    const/16 v10, 0x59

    if-eq v6, v10, :cond_1

    .line 991
    goto/16 :goto_4

    .line 997
    :cond_1
    invoke-virtual {p0, v11, v3}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 998
    iget v10, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    if-eqz v10, :cond_7

    iget-object v10, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/android/dx/rop/cst/Constant;

    instance-of v10, v10, Lcom/android/dx/rop/cst/CstInteger;

    if-eqz v10, :cond_7

    iget v10, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->value:I

    if-eq v10, v5, :cond_2

    .line 1001
    goto/16 :goto_4

    .line 1004
    :cond_2
    iget v10, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v10, v11

    .line 1010
    .end local v11    # "curOffset":I
    .local v10, "curOffset":I
    invoke-virtual {p0, v10, v3}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 1011
    iget v11, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    if-eqz v11, :cond_6

    iget-object v11, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/android/dx/rop/cst/Constant;

    instance-of v11, v11, Lcom/android/dx/rop/cst/CstLiteralBits;

    if-nez v11, :cond_3

    .line 1013
    goto :goto_3

    .line 1015
    :cond_3
    iget v11, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->length:I

    add-int/2addr v10, v11

    .line 1016
    iget-object v11, v3, Lcom/android/dx/cf/code/BytecodeArray$ConstantParserVisitor;->cst:Lcom/android/dx/rop/cst/Constant;

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1018
    iget-object v11, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v12, v10, 0x1

    .end local v10    # "curOffset":I
    .local v12, "curOffset":I
    invoke-virtual {v11, v10}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 1020
    packed-switch v0, :pswitch_data_1

    .line 1065
    const/4 v9, 0x1

    goto :goto_2

    .line 1059
    :pswitch_8
    const/16 v10, 0x50

    if-eq v6, v10, :cond_4

    .line 1060
    const/4 v9, 0x1

    goto :goto_2

    .line 1053
    :pswitch_9
    const/16 v10, 0x4f

    if-eq v6, v10, :cond_4

    .line 1054
    const/4 v9, 0x1

    goto :goto_2

    .line 1047
    :pswitch_a
    const/16 v10, 0x56

    if-eq v6, v10, :cond_4

    .line 1048
    const/4 v9, 0x1

    goto :goto_2

    .line 1035
    :pswitch_b
    const/16 v10, 0x52

    if-eq v6, v10, :cond_4

    .line 1036
    const/4 v9, 0x1

    goto :goto_2

    .line 1041
    :pswitch_c
    const/16 v10, 0x51

    if-eq v6, v10, :cond_4

    .line 1042
    const/4 v9, 0x1

    goto :goto_2

    .line 1029
    :pswitch_d
    const/16 v10, 0x55

    if-eq v6, v10, :cond_4

    .line 1030
    const/4 v9, 0x1

    goto :goto_2

    .line 1023
    :pswitch_e
    const/16 v10, 0x54

    if-eq v6, v10, :cond_4

    .line 1024
    const/4 v9, 0x1

    .line 1068
    :cond_4
    :goto_2
    if-eqz v9, :cond_5

    .line 1069
    move v6, v12

    goto :goto_5

    .line 1071
    :cond_5
    move v7, v12

    .line 1072
    nop

    .end local v6    # "nextByte":I
    .end local v9    # "punt":Z
    add-int/lit8 v5, v5, 0x1

    .line 1073
    move v6, v12

    goto :goto_1

    .line 1080
    .end local v12    # "curOffset":I
    .restart local v10    # "curOffset":I
    :cond_6
    :goto_3
    move v6, v10

    goto :goto_5

    .end local v10    # "curOffset":I
    .restart local v11    # "curOffset":I
    :cond_7
    :goto_4
    move v6, v11

    .end local v11    # "curOffset":I
    .local v6, "curOffset":I
    :cond_8
    :goto_5
    const/4 v9, 0x2

    if-lt v5, v9, :cond_a

    if-eq v5, v4, :cond_9

    goto :goto_6

    .line 1084
    :cond_9
    sub-int v9, v7, p1

    invoke-interface {p2, p1, v9, v1, v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNewarray(IILcom/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V

    .line 1085
    sub-int v9, v7, p1

    return v9

    .line 1081
    :cond_a
    :goto_6
    const/4 v10, 0x0

    invoke-interface {p2, p1, v9, v1, v10}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNewarray(IILcom/android/dx/rop/cst/CstType;Ljava/util/ArrayList;)V

    .line 1082
    return v9

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_e
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private parseTableswitch(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 15
    .param p1, "offset"    # I
    .param p2, "visitor"    # Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    .line 828
    move-object v0, p0

    add-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, -0x4

    .line 831
    .local v1, "at":I
    const/4 v2, 0x0

    .line 832
    .local v2, "padding":I
    add-int/lit8 v3, p1, 0x1

    move v7, v2

    .end local v2    # "padding":I
    .local v3, "i":I
    .local v7, "padding":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 833
    shl-int/lit8 v2, v7, 0x8

    iget-object v4, v0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v4, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v4

    or-int v7, v2, v4

    .line 832
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 836
    .end local v3    # "i":I
    :cond_0
    iget-object v2, v0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v2, v1}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v2

    add-int v8, p1, v2

    .line 837
    .local v8, "defaultTarget":I
    iget-object v2, v0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v1, 0x4

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v9

    .line 838
    .local v9, "low":I
    iget-object v2, v0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v1, 0x8

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v10

    .line 839
    .local v10, "high":I
    sub-int v2, v10, v9

    add-int/lit8 v11, v2, 0x1

    .line 840
    .local v11, "count":I
    add-int/lit8 v1, v1, 0xc

    .line 842
    if-gt v9, v10, :cond_2

    .line 846
    new-instance v2, Lcom/android/dx/cf/code/SwitchList;

    invoke-direct {v2, v11}, Lcom/android/dx/cf/code/SwitchList;-><init>(I)V

    move-object v12, v2

    .line 847
    .local v12, "cases":Lcom/android/dx/cf/code/SwitchList;
    const/4 v2, 0x0

    move v13, v1

    .end local v1    # "at":I
    .local v2, "i":I
    .local v13, "at":I
    :goto_1
    if-ge v2, v11, :cond_1

    .line 848
    iget-object v1, v0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v1, v13}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v1

    add-int v1, p1, v1

    .line 849
    .local v1, "target":I
    add-int/lit8 v13, v13, 0x4

    .line 850
    add-int v3, v9, v2

    invoke-virtual {v12, v3, v1}, Lcom/android/dx/cf/code/SwitchList;->add(II)V

    .line 847
    .end local v1    # "target":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 852
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v12, v8}, Lcom/android/dx/cf/code/SwitchList;->setDefaultTarget(I)V

    .line 853
    invoke-virtual {v12}, Lcom/android/dx/cf/code/SwitchList;->removeSuperfluousDefaults()V

    .line 854
    invoke-virtual {v12}, Lcom/android/dx/cf/code/SwitchList;->setImmutable()V

    .line 856
    sub-int v14, v13, p1

    .line 857
    .local v14, "length":I
    const/16 v2, 0xab

    move-object/from16 v1, p2

    move/from16 v3, p1

    move v4, v14

    move-object v5, v12

    move v6, v7

    invoke-interface/range {v1 .. v6}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitSwitch(IIILcom/android/dx/cf/code/SwitchList;I)V

    .line 860
    return v14

    .line 843
    .end local v12    # "cases":Lcom/android/dx/cf/code/SwitchList;
    .end local v13    # "at":I
    .end local v14    # "length":I
    .local v1, "at":I
    :cond_2
    new-instance v2, Lcom/android/dx/cf/code/SimException;

    const-string v3, "low / high inversion"

    invoke-direct {v2, v3}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private parseWide(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 11
    .param p1, "offset"    # I
    .param p2, "visitor"    # Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    .line 1098
    iget-object v0, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v0

    .line 1099
    .local v0, "opcode":I
    iget-object v1, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {v1, v2}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v1

    .line 1100
    .local v1, "idx":I
    const/4 v10, 0x4

    sparse-switch v0, :sswitch_data_0

    .line 1163
    const/16 v2, 0xc4

    const/4 v3, 0x1

    invoke-interface {p2, v2, p1, v3}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitInvalid(III)V

    .line 1164
    return v3

    .line 1152
    :sswitch_0
    const/4 v5, 0x4

    sget-object v7, Lcom/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, p2

    move v3, v0

    move v4, p1

    move v6, v1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1154
    return v10

    .line 1157
    :sswitch_1
    iget-object v2, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getShort(I)I

    move-result v9

    .line 1158
    .local v9, "value":I
    const/4 v5, 0x6

    sget-object v7, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    move-object v2, p2

    move v3, v0

    move v4, p1

    move v6, v1

    move v8, v9

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1160
    const/4 v2, 0x6

    return v2

    .line 1147
    .end local v9    # "value":I
    :sswitch_2
    const/16 v4, 0x36

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1149
    return v10

    .line 1142
    :sswitch_3
    const/16 v4, 0x36

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1144
    return v10

    .line 1137
    :sswitch_4
    const/16 v4, 0x36

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1139
    return v10

    .line 1132
    :sswitch_5
    const/16 v4, 0x36

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1134
    return v10

    .line 1127
    :sswitch_6
    const/16 v4, 0x36

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1129
    return v10

    .line 1122
    :sswitch_7
    const/16 v4, 0x15

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1124
    return v10

    .line 1117
    :sswitch_8
    const/16 v4, 0x15

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1119
    return v10

    .line 1112
    :sswitch_9
    const/16 v4, 0x15

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1114
    return v10

    .line 1107
    :sswitch_a
    const/16 v4, 0x15

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1109
    return v10

    .line 1102
    :sswitch_b
    const/16 v4, 0x15

    const/4 v6, 0x4

    sget-object v8, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    const/4 v9, 0x0

    move-object v3, p2

    move v5, p1

    move v7, v1

    invoke-interface/range {v3 .. v9}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 1104
    return v10

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_b
        0x16 -> :sswitch_a
        0x17 -> :sswitch_9
        0x18 -> :sswitch_8
        0x19 -> :sswitch_7
        0x36 -> :sswitch_6
        0x37 -> :sswitch_5
        0x38 -> :sswitch_4
        0x39 -> :sswitch_3
        0x3a -> :sswitch_2
        0x84 -> :sswitch_1
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public byteLength()I
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public forEach(Lcom/android/dx/cf/code/BytecodeArray$Visitor;)V
    .locals 3
    .param p1, "visitor"    # Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    .line 107
    iget-object v0, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v0

    .line 108
    .local v0, "sz":I
    const/4 v1, 0x0

    .line 110
    .local v1, "at":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 115
    invoke-virtual {p0, v1, p1}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 117
    :cond_0
    return-void
.end method

.method public getBytes()Lcom/android/dx/util/ByteArray;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    return-object v0
.end method

.method public getInstructionOffsets()[I
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v0

    .line 128
    .local v0, "sz":I
    invoke-static {v0}, Lcom/android/dx/util/Bits;->makeBitSet(I)[I

    move-result-object v1

    .line 129
    .local v1, "result":[I
    const/4 v2, 0x0

    .line 131
    .local v2, "at":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 132
    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/dx/util/Bits;->set([IIZ)V

    .line 133
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v3

    .line 134
    .local v3, "length":I
    add-int/2addr v2, v3

    .line 135
    .end local v3    # "length":I
    goto :goto_0

    .line 137
    :cond_0
    return-object v1
.end method

.method public parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I
    .locals 17
    .param p1, "offset"    # I
    .param p2, "visitor"    # Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    .line 218
    move-object/from16 v1, p0

    move/from16 v9, p1

    const-string v10, "...at bytecode offset "

    if-nez p2, :cond_0

    .line 219
    sget-object v0, Lcom/android/dx/cf/code/BytecodeArray;->EMPTY_VISITOR:Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    move-object v11, v0

    .end local p2    # "visitor":Lcom/android/dx/cf/code/BytecodeArray$Visitor;
    .local v0, "visitor":Lcom/android/dx/cf/code/BytecodeArray$Visitor;
    goto :goto_0

    .line 218
    .end local v0    # "visitor":Lcom/android/dx/cf/code/BytecodeArray$Visitor;
    .restart local p2    # "visitor":Lcom/android/dx/cf/code/BytecodeArray$Visitor;
    :cond_0
    move-object/from16 v11, p2

    .line 223
    .end local p2    # "visitor":Lcom/android/dx/cf/code/BytecodeArray$Visitor;
    .local v11, "visitor":Lcom/android/dx/cf/code/BytecodeArray$Visitor;
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v0, v9}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v0

    .line 224
    .local v0, "opcode":I
    invoke-static {v0}, Lcom/android/dx/cf/code/ByteOps;->opInfo(I)I

    move-result v2

    move v12, v2

    .line 225
    .local v12, "info":I
    and-int/lit8 v13, v12, 0x1f

    .line 227
    .local v13, "fmt":I
    const/4 v2, 0x0

    const/4 v8, 0x5

    const/16 v3, 0xac

    const/16 v4, 0x4f

    const/16 v5, 0x2e

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/4 v7, 0x1

    packed-switch v0, :pswitch_data_0

    .line 806
    move v15, v7

    invoke-interface {v11, v0, v9, v15}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitInvalid(III)V

    goto/16 :goto_4

    .line 798
    :pswitch_0
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getInt(I)I

    move-result v2

    add-int/2addr v2, v9

    .line 799
    .local v2, "target":I
    const/16 v3, 0xc8

    if-ne v0, v3, :cond_1

    const/16 v3, 0xa7

    goto :goto_1

    :cond_1
    const/16 v3, 0xa8

    .line 802
    .local v3, "newop":I
    :goto_1
    invoke-interface {v11, v3, v9, v8, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitBranch(IIII)V

    .line 803
    return v8

    .line 790
    .end local v2    # "target":I
    .end local v3    # "newop":I
    :pswitch_1
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    move v8, v2

    .line 791
    .local v8, "idx":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x3

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v7

    .line 792
    .local v7, "dimensions":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->pool:Lcom/android/dx/rop/cst/ConstantPool;

    invoke-interface {v2, v8}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 793
    .local v6, "cst":Lcom/android/dx/rop/cst/Constant;
    const/4 v5, 0x4

    move-object v2, v11

    move v3, v0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 794
    const/4 v2, 0x4

    return v2

    .line 787
    .end local v6    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v7    # "dimensions":I
    .end local v8    # "idx":I
    :pswitch_2
    invoke-direct {v1, v9, v11}, Lcom/android/dx/cf/code/BytecodeArray;->parseWide(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    return v2

    .line 784
    :pswitch_3
    invoke-direct {v1, v9, v11}, Lcom/android/dx/cf/code/BytecodeArray;->parseNewarray(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    return v2

    .line 777
    :pswitch_4
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    move v14, v2

    .line 779
    .local v14, "idx":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->pool:Lcom/android/dx/rop/cst/ConstantPool;

    invoke-interface {v2, v14}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/dx/rop/cst/CstInvokeDynamic;

    .line 780
    .local v6, "cstInvokeDynamic":Lcom/android/dx/rop/cst/CstInvokeDynamic;
    const/4 v5, 0x5

    const/4 v7, 0x0

    move-object v2, v11

    move v3, v0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 781
    return v8

    .line 768
    .end local v6    # "cstInvokeDynamic":Lcom/android/dx/rop/cst/CstInvokeDynamic;
    .end local v14    # "idx":I
    :pswitch_5
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    move v14, v2

    .line 769
    .restart local v14    # "idx":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x3

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v2

    move v15, v2

    .line 770
    .local v15, "count":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x4

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v2

    move/from16 v16, v2

    .line 771
    .local v16, "expectZero":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->pool:Lcom/android/dx/rop/cst/ConstantPool;

    invoke-interface {v2, v14}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 772
    .local v6, "cst":Lcom/android/dx/rop/cst/Constant;
    const/4 v5, 0x5

    shl-int/lit8 v2, v16, 0x8

    or-int v7, v15, v2

    move-object v2, v11

    move v3, v0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 774
    return v8

    .line 762
    .end local v6    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v14    # "idx":I
    .end local v15    # "count":I
    .end local v16    # "expectZero":I
    :pswitch_6
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    move v8, v2

    .line 763
    .restart local v8    # "idx":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->pool:Lcom/android/dx/rop/cst/ConstantPool;

    invoke-interface {v2, v8}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 764
    .restart local v6    # "cst":Lcom/android/dx/rop/cst/Constant;
    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object v2, v11

    move v3, v0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 765
    return v14

    .line 748
    .end local v6    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v8    # "idx":I
    :pswitch_7
    sget-object v2, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v0, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 749
    return v7

    .line 740
    :pswitch_8
    sget-object v2, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v3, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 742
    return v7

    .line 735
    :pswitch_9
    sget-object v2, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v3, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 737
    return v7

    .line 730
    :pswitch_a
    sget-object v2, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v3, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 732
    return v7

    .line 725
    :pswitch_b
    sget-object v2, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v3, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 727
    return v7

    .line 721
    :pswitch_c
    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v3, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 722
    return v7

    .line 718
    :pswitch_d
    invoke-direct {v1, v9, v11}, Lcom/android/dx/cf/code/BytecodeArray;->parseLookupswitch(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    return v2

    .line 715
    :pswitch_e
    invoke-direct {v1, v9, v11}, Lcom/android/dx/cf/code/BytecodeArray;->parseTableswitch(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    move-result v2

    return v2

    .line 709
    :pswitch_f
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 710
    .local v6, "idx":I
    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->RETURN_ADDRESS:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move v3, v0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 712
    return v15

    .line 704
    .end local v6    # "idx":I
    :pswitch_10
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getShort(I)I

    move-result v2

    add-int/2addr v2, v9

    .line 705
    .restart local v2    # "target":I
    invoke-interface {v11, v0, v9, v14, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitBranch(IIII)V

    .line 706
    return v14

    .line 683
    .end local v2    # "target":I
    :pswitch_11
    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v0, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 684
    return v7

    .line 668
    :pswitch_12
    sget-object v2, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v0, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 669
    return v7

    .line 662
    :pswitch_13
    sget-object v2, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v0, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 663
    return v7

    .line 656
    :pswitch_14
    sget-object v2, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v0, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 657
    return v7

    .line 647
    :pswitch_15
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 648
    .restart local v6    # "idx":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x2

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getByte(I)I

    move-result v8

    .line 649
    .local v8, "value":I
    const/4 v5, 0x3

    sget-object v7, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    move-object v2, v11

    move v3, v0

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 651
    return v14

    .line 643
    .end local v6    # "idx":I
    .end local v8    # "value":I
    :pswitch_16
    add-int/lit8 v2, v0, -0x3

    sget-object v3, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v2, v9, v7, v3}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 644
    return v7

    .line 630
    :pswitch_17
    add-int/lit8 v2, v0, -0x2

    sget-object v3, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v2, v9, v7, v3}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 631
    return v7

    .line 617
    :pswitch_18
    add-int/lit8 v2, v0, -0x1

    sget-object v3, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v2, v9, v7, v3}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 618
    return v7

    .line 598
    :pswitch_19
    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v0, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 599
    return v7

    .line 583
    :pswitch_1a
    sget-object v2, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v0, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 584
    return v7

    .line 570
    :pswitch_1b
    sget-object v2, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v4, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 572
    return v7

    .line 565
    :pswitch_1c
    sget-object v2, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v4, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 567
    return v7

    .line 560
    :pswitch_1d
    sget-object v2, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v4, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 562
    return v7

    .line 551
    :pswitch_1e
    sget-object v2, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v4, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 553
    return v7

    .line 546
    :pswitch_1f
    sget-object v2, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v4, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 548
    return v7

    .line 541
    :pswitch_20
    sget-object v2, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v4, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 543
    return v7

    .line 536
    :pswitch_21
    sget-object v2, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v4, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 538
    return v7

    .line 532
    :pswitch_22
    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v4, v9, v7, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 533
    return v7

    .line 526
    :pswitch_23
    add-int/lit8 v14, v0, -0x4b

    .line 527
    .restart local v14    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v8, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    const/4 v15, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    move-object v7, v8

    move v8, v15

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 529
    const/4 v15, 0x1

    return v15

    .line 517
    .end local v14    # "idx":I
    :pswitch_24
    move v15, v7

    add-int/lit8 v14, v0, -0x47

    .line 518
    .restart local v14    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 520
    return v15

    .line 508
    .end local v14    # "idx":I
    :pswitch_25
    move v15, v7

    add-int/lit8 v14, v0, -0x43

    .line 509
    .restart local v14    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 511
    return v15

    .line 499
    .end local v14    # "idx":I
    :pswitch_26
    move v15, v7

    add-int/lit8 v14, v0, -0x3f

    .line 500
    .restart local v14    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 502
    return v15

    .line 490
    .end local v14    # "idx":I
    :pswitch_27
    move v15, v7

    add-int/lit8 v14, v0, -0x3b

    .line 491
    .restart local v14    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 493
    return v15

    .line 481
    .end local v14    # "idx":I
    :pswitch_28
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 482
    .restart local v6    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 484
    return v15

    .line 475
    .end local v6    # "idx":I
    :pswitch_29
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 476
    .restart local v6    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 478
    return v15

    .line 469
    .end local v6    # "idx":I
    :pswitch_2a
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 470
    .restart local v6    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 472
    return v15

    .line 463
    .end local v6    # "idx":I
    :pswitch_2b
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 464
    .restart local v6    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 466
    return v15

    .line 457
    .end local v6    # "idx":I
    :pswitch_2c
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 458
    .restart local v6    # "idx":I
    const/16 v3, 0x36

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 460
    return v15

    .line 452
    .end local v6    # "idx":I
    :pswitch_2d
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->SHORT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v5, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 454
    return v15

    .line 448
    :pswitch_2e
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->CHAR:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v5, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 449
    return v15

    .line 444
    :pswitch_2f
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->BYTE:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v5, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 445
    return v15

    .line 435
    :pswitch_30
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v5, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 437
    return v15

    .line 430
    :pswitch_31
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v5, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 432
    return v15

    .line 425
    :pswitch_32
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v5, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 427
    return v15

    .line 421
    :pswitch_33
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v5, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 422
    return v15

    .line 417
    :pswitch_34
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v5, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V

    .line 418
    return v15

    .line 411
    :pswitch_35
    move v15, v7

    add-int/lit8 v14, v0, -0x2a

    .line 412
    .restart local v14    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 414
    return v15

    .line 402
    .end local v14    # "idx":I
    :pswitch_36
    move v15, v7

    add-int/lit8 v14, v0, -0x26

    .line 403
    .restart local v14    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 405
    return v15

    .line 393
    .end local v14    # "idx":I
    :pswitch_37
    move v15, v7

    add-int/lit8 v14, v0, -0x22

    .line 394
    .restart local v14    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 396
    return v15

    .line 384
    .end local v14    # "idx":I
    :pswitch_38
    move v15, v7

    add-int/lit8 v14, v0, -0x1e

    .line 385
    .restart local v14    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 387
    return v15

    .line 375
    .end local v14    # "idx":I
    :pswitch_39
    move v15, v7

    add-int/lit8 v14, v0, -0x1a

    .line 376
    .restart local v14    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x1

    sget-object v7, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    move v6, v14

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 378
    return v15

    .line 366
    .end local v14    # "idx":I
    :pswitch_3a
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 367
    .restart local v6    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 369
    return v15

    .line 360
    .end local v6    # "idx":I
    :pswitch_3b
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 361
    .restart local v6    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->DOUBLE:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 363
    return v15

    .line 354
    .end local v6    # "idx":I
    :pswitch_3c
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 355
    .restart local v6    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->FLOAT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 357
    return v15

    .line 348
    .end local v6    # "idx":I
    :pswitch_3d
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 349
    .restart local v6    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->LONG:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 351
    return v15

    .line 342
    .end local v6    # "idx":I
    :pswitch_3e
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v6

    .line 343
    .restart local v6    # "idx":I
    const/16 v3, 0x15

    const/4 v5, 0x2

    sget-object v7, Lcom/android/dx/rop/type/Type;->INT:Lcom/android/dx/rop/type/Type;

    const/4 v8, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v8}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitLocal(IIIILcom/android/dx/rop/type/Type;I)V

    .line 345
    return v15

    .line 336
    .end local v6    # "idx":I
    :pswitch_3f
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v2

    move v8, v2

    .line 337
    .local v8, "idx":I
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->pool:Lcom/android/dx/rop/cst/ConstantPool;

    invoke-interface {v2, v8}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v6

    .line 338
    .local v6, "cst":Lcom/android/dx/rop/cst/Constant;
    const/16 v3, 0x14

    const/4 v5, 0x3

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 339
    return v14

    .line 328
    .end local v6    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v8    # "idx":I
    :pswitch_40
    iget-object v3, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedShort(I)I

    move-result v3

    move v8, v3

    .line 329
    .restart local v8    # "idx":I
    iget-object v3, v1, Lcom/android/dx/cf/code/BytecodeArray;->pool:Lcom/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, v8}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    move-object v15, v3

    .line 330
    .local v15, "cst":Lcom/android/dx/rop/cst/Constant;
    nop

    instance-of v3, v15, Lcom/android/dx/rop/cst/CstInteger;

    if-eqz v3, :cond_2

    move-object v2, v15

    check-cast v2, Lcom/android/dx/rop/cst/CstInteger;

    .line 331
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v2

    goto :goto_2

    :cond_2
    nop

    :goto_2
    move v7, v2

    .line 332
    .local v7, "value":I
    const/16 v3, 0x12

    const/4 v5, 0x3

    move-object v2, v11

    move/from16 v4, p1

    move-object v6, v15

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 333
    return v14

    .line 320
    .end local v7    # "value":I
    .end local v8    # "idx":I
    .end local v15    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_41
    iget-object v3, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v4, v9, 0x1

    invoke-virtual {v3, v4}, Lcom/android/dx/util/ByteArray;->getUnsignedByte(I)I

    move-result v3

    move v8, v3

    .line 321
    .restart local v8    # "idx":I
    iget-object v3, v1, Lcom/android/dx/cf/code/BytecodeArray;->pool:Lcom/android/dx/rop/cst/ConstantPool;

    invoke-interface {v3, v8}, Lcom/android/dx/rop/cst/ConstantPool;->get(I)Lcom/android/dx/rop/cst/Constant;

    move-result-object v3

    move-object v14, v3

    .line 322
    .local v14, "cst":Lcom/android/dx/rop/cst/Constant;
    nop

    instance-of v3, v14, Lcom/android/dx/rop/cst/CstInteger;

    if-eqz v3, :cond_3

    move-object v2, v14

    check-cast v2, Lcom/android/dx/rop/cst/CstInteger;

    .line 323
    invoke-virtual {v2}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v2

    goto :goto_3

    :cond_3
    nop

    :goto_3
    move v7, v2

    .line 324
    .restart local v7    # "value":I
    const/16 v3, 0x12

    const/4 v5, 0x2

    move-object v2, v11

    move/from16 v4, p1

    move-object v6, v14

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 325
    return v15

    .line 314
    .end local v7    # "value":I
    .end local v8    # "idx":I
    .end local v14    # "cst":Lcom/android/dx/rop/cst/Constant;
    :pswitch_42
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getShort(I)I

    move-result v7

    .line 315
    .restart local v7    # "value":I
    const/16 v3, 0x12

    const/4 v5, 0x3

    .line 316
    invoke-static {v7}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v6

    .line 315
    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 317
    return v14

    .line 308
    .end local v7    # "value":I
    :pswitch_43
    iget-object v2, v1, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v2, v3}, Lcom/android/dx/util/ByteArray;->getByte(I)I

    move-result v7

    .line 309
    .restart local v7    # "value":I
    const/16 v3, 0x12

    const/4 v5, 0x2

    .line 310
    invoke-static {v7}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v6

    .line 309
    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 311
    return v15

    .line 303
    .end local v7    # "value":I
    :pswitch_44
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstDouble;->VALUE_1:Lcom/android/dx/rop/cst/CstDouble;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 305
    return v15

    .line 298
    :pswitch_45
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstDouble;->VALUE_0:Lcom/android/dx/rop/cst/CstDouble;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 300
    return v15

    .line 293
    :pswitch_46
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstFloat;->VALUE_2:Lcom/android/dx/rop/cst/CstFloat;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 295
    return v15

    .line 288
    :pswitch_47
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstFloat;->VALUE_1:Lcom/android/dx/rop/cst/CstFloat;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 290
    return v15

    .line 283
    :pswitch_48
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstFloat;->VALUE_0:Lcom/android/dx/rop/cst/CstFloat;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 285
    return v15

    .line 278
    :pswitch_49
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstLong;->VALUE_1:Lcom/android/dx/rop/cst/CstLong;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 280
    return v15

    .line 273
    :pswitch_4a
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstLong;->VALUE_0:Lcom/android/dx/rop/cst/CstLong;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 275
    return v15

    .line 268
    :pswitch_4b
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstInteger;->VALUE_5:Lcom/android/dx/rop/cst/CstInteger;

    const/4 v7, 0x5

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 270
    return v15

    .line 263
    :pswitch_4c
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstInteger;->VALUE_4:Lcom/android/dx/rop/cst/CstInteger;

    const/4 v7, 0x4

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 265
    return v15

    .line 258
    :pswitch_4d
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstInteger;->VALUE_3:Lcom/android/dx/rop/cst/CstInteger;

    const/4 v7, 0x3

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 260
    return v15

    .line 253
    :pswitch_4e
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstInteger;->VALUE_2:Lcom/android/dx/rop/cst/CstInteger;

    const/4 v7, 0x2

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 255
    return v15

    .line 248
    :pswitch_4f
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstInteger;->VALUE_1:Lcom/android/dx/rop/cst/CstInteger;

    const/4 v7, 0x1

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 250
    return v15

    .line 243
    :pswitch_50
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstInteger;->VALUE_0:Lcom/android/dx/rop/cst/CstInteger;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 245
    return v15

    .line 238
    :pswitch_51
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstInteger;->VALUE_M1:Lcom/android/dx/rop/cst/CstInteger;

    const/4 v7, -0x1

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 240
    return v15

    .line 233
    :pswitch_52
    move v15, v7

    const/16 v3, 0x12

    const/4 v5, 0x1

    sget-object v6, Lcom/android/dx/rop/cst/CstKnownNull;->THE_ONE:Lcom/android/dx/rop/cst/CstKnownNull;

    const/4 v7, 0x0

    move-object v2, v11

    move/from16 v4, p1

    invoke-interface/range {v2 .. v7}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitConstant(IIILcom/android/dx/rop/cst/Constant;I)V

    .line 235
    return v15

    .line 229
    :pswitch_53
    move v15, v7

    sget-object v2, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    invoke-interface {v11, v0, v9, v15, v2}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->visitNoArgs(IIILcom/android/dx/rop/type/Type;)V
    :try_end_0
    .catch Lcom/android/dx/cf/code/SimException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    return v15

    .line 807
    :goto_4
    return v15

    .line 813
    .end local v0    # "opcode":I
    .end local v12    # "info":I
    .end local v13    # "fmt":I
    :catch_0
    move-exception v0

    .line 814
    .local v0, "ex":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/android/dx/cf/code/SimException;

    invoke-direct {v2, v0}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/Throwable;)V

    .line 815
    .local v2, "se":Lcom/android/dx/cf/code/SimException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 816
    throw v2

    .line 810
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    .end local v2    # "se":Lcom/android/dx/cf/code/SimException;
    :catch_1
    move-exception v0

    .line 811
    .local v0, "ex":Lcom/android/dx/cf/code/SimException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/dx/cf/code/SimException;->addContext(Ljava/lang/String;)V

    .line 812
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_39
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_36
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_19
        :pswitch_18
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_12
        :pswitch_11
        :pswitch_14
        :pswitch_13
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_11
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_1
        :pswitch_10
        :pswitch_10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processWorkSet([ILcom/android/dx/cf/code/BytecodeArray$Visitor;)V
    .locals 2
    .param p1, "workSet"    # [I
    .param p2, "visitor"    # Lcom/android/dx/cf/code/BytecodeArray$Visitor;

    .line 152
    if-eqz p2, :cond_1

    .line 157
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/dx/util/Bits;->findFirst([II)I

    move-result v0

    .line 158
    .local v0, "offset":I
    if-gez v0, :cond_0

    .line 159
    nop

    .line 165
    .end local v0    # "offset":I
    return-void

    .line 161
    .restart local v0    # "offset":I
    :cond_0
    invoke-static {p1, v0}, Lcom/android/dx/util/Bits;->clear([II)V

    .line 162
    invoke-virtual {p0, v0, p2}, Lcom/android/dx/cf/code/BytecodeArray;->parseInstruction(ILcom/android/dx/cf/code/BytecodeArray$Visitor;)I

    .line 163
    invoke-interface {p2, v0}, Lcom/android/dx/cf/code/BytecodeArray$Visitor;->setPreviousOffset(I)V

    .line 164
    .end local v0    # "offset":I
    goto :goto_0

    .line 153
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "visitor == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/dx/cf/code/BytecodeArray;->bytes:Lcom/android/dx/util/ByteArray;

    invoke-virtual {v0}, Lcom/android/dx/util/ByteArray;->size()I

    move-result v0

    return v0
.end method
