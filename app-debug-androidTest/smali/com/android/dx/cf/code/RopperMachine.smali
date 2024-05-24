.class final Lcom/android/dx/cf/code/RopperMachine;
.super Lcom/android/dx/cf/code/ValueAwareMachine;
.source "RopperMachine.java"


# static fields
.field private static final ARRAY_REFLECT_TYPE:Lcom/android/dx/rop/cst/CstType;

.field private static final MULTIANEWARRAY_METHOD:Lcom/android/dx/rop/cst/CstMethodRef;


# instance fields
.field private final advice:Lcom/android/dx/rop/code/TranslationAdvice;

.field private blockCanThrow:Z

.field private catches:Lcom/android/dx/rop/type/TypeList;

.field private catchesUsed:Z

.field private extraBlockCount:I

.field private hasJsr:Z

.field private final insns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/Insn;",
            ">;"
        }
    .end annotation
.end field

.field private final maxLocals:I

.field private final method:Lcom/android/dx/cf/code/ConcreteMethod;

.field private final methods:Lcom/android/dx/cf/iface/MethodList;

.field private primarySuccessorIndex:I

.field private returnAddress:Lcom/android/dx/cf/code/ReturnAddress;

.field private returnOp:Lcom/android/dx/rop/code/Rop;

.field private returnPosition:Lcom/android/dx/rop/code/SourcePosition;

.field private returns:Z

.field private final ropper:Lcom/android/dx/cf/code/Ropper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/android/dx/rop/cst/CstType;

    .line 57
    const-string v1, "java/lang/reflect/Array"

    invoke-static {v1}, Lcom/android/dx/rop/type/Type;->internClassName(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    sput-object v0, Lcom/android/dx/cf/code/RopperMachine;->ARRAY_REFLECT_TYPE:Lcom/android/dx/rop/cst/CstType;

    .line 63
    new-instance v1, Lcom/android/dx/rop/cst/CstMethodRef;

    new-instance v2, Lcom/android/dx/rop/cst/CstNat;

    new-instance v3, Lcom/android/dx/rop/cst/CstString;

    const-string v4, "newInstance"

    invoke-direct {v3, v4}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/android/dx/rop/cst/CstString;

    const-string v5, "(Ljava/lang/Class;[I)Ljava/lang/Object;"

    invoke-direct {v4, v5}, Lcom/android/dx/rop/cst/CstString;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v4}, Lcom/android/dx/rop/cst/CstNat;-><init>(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)V

    invoke-direct {v1, v0, v2}, Lcom/android/dx/rop/cst/CstMethodRef;-><init>(Lcom/android/dx/rop/cst/CstType;Lcom/android/dx/rop/cst/CstNat;)V

    sput-object v1, Lcom/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/android/dx/rop/cst/CstMethodRef;

    return-void
.end method

.method public constructor <init>(Lcom/android/dx/cf/code/Ropper;Lcom/android/dx/cf/code/ConcreteMethod;Lcom/android/dx/rop/code/TranslationAdvice;Lcom/android/dx/cf/iface/MethodList;)V
    .locals 3
    .param p1, "ropper"    # Lcom/android/dx/cf/code/Ropper;
    .param p2, "method"    # Lcom/android/dx/cf/code/ConcreteMethod;
    .param p3, "advice"    # Lcom/android/dx/rop/code/TranslationAdvice;
    .param p4, "methods"    # Lcom/android/dx/cf/iface/MethodList;

    .line 138
    invoke-virtual {p2}, Lcom/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/android/dx/rop/type/Prototype;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/dx/cf/code/ValueAwareMachine;-><init>(Lcom/android/dx/rop/type/Prototype;)V

    .line 140
    if-eqz p4, :cond_2

    .line 144
    if-eqz p1, :cond_1

    .line 148
    if-eqz p3, :cond_0

    .line 152
    iput-object p1, p0, Lcom/android/dx/cf/code/RopperMachine;->ropper:Lcom/android/dx/cf/code/Ropper;

    .line 153
    iput-object p2, p0, Lcom/android/dx/cf/code/RopperMachine;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    .line 154
    iput-object p4, p0, Lcom/android/dx/cf/code/RopperMachine;->methods:Lcom/android/dx/cf/iface/MethodList;

    .line 155
    iput-object p3, p0, Lcom/android/dx/cf/code/RopperMachine;->advice:Lcom/android/dx/rop/code/TranslationAdvice;

    .line 156
    invoke-virtual {p2}, Lcom/android/dx/cf/code/ConcreteMethod;->getMaxLocals()I

    move-result v0

    iput v0, p0, Lcom/android/dx/cf/code/RopperMachine;->maxLocals:I

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/dx/cf/code/RopperMachine;->returns:Z

    .line 161
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 162
    iput v1, p0, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 163
    iput-boolean v1, p0, Lcom/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 164
    iput-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returnOp:Lcom/android/dx/rop/code/Rop;

    .line 165
    iput-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 166
    return-void

    .line 149
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "advice == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ropper == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "methods == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getSources(II)Lcom/android/dx/rop/code/RegisterSpecList;
    .locals 10
    .param p1, "opcode"    # I
    .param p2, "stackPointer"    # I

    .line 676
    invoke-virtual {p0}, Lcom/android/dx/cf/code/RopperMachine;->argCount()I

    move-result v0

    .line 678
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 680
    sget-object v1, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    return-object v1

    .line 683
    :cond_0
    invoke-virtual {p0}, Lcom/android/dx/cf/code/RopperMachine;->getLocalIndex()I

    move-result v1

    .line 686
    .local v1, "localIndex":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    .line 688
    new-instance v4, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v4, v3}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    move-object v3, v4

    .line 689
    .local v3, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {p0, v2}, Lcom/android/dx/cf/code/RopperMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    goto :goto_2

    .line 691
    .end local v3    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_1
    new-instance v4, Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v4, v0}, Lcom/android/dx/rop/code/RegisterSpecList;-><init>(I)V

    .line 692
    .local v4, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    move v5, p2

    .line 693
    .local v5, "regAt":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v0, :cond_2

    .line 694
    invoke-virtual {p0, v6}, Lcom/android/dx/cf/code/RopperMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 695
    .local v7, "spec":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v4, v6, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 696
    invoke-virtual {v7}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v8

    add-int/2addr v5, v8

    .line 693
    .end local v7    # "spec":Lcom/android/dx/rop/code/RegisterSpec;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 699
    .end local v6    # "i":I
    :cond_2
    const-string v6, "shouldn\'t happen"

    const/4 v7, 0x2

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 725
    :sswitch_0
    if-ne v0, v7, :cond_3

    .line 728
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 729
    .local v6, "obj":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v4, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v7

    .line 730
    .local v7, "value":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v4, v2, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 731
    invoke-virtual {v4, v3, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 732
    goto :goto_1

    .line 726
    .end local v6    # "obj":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v7    # "value":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 708
    :sswitch_1
    const/4 v8, 0x3

    if-ne v0, v8, :cond_4

    .line 711
    invoke-virtual {v4, v2}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v6

    .line 712
    .local v6, "array":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v4, v3}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v8

    .line 713
    .local v8, "index":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v4, v7}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 714
    .local v9, "value":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v4, v2, v9}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 715
    invoke-virtual {v4, v3, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 716
    invoke-virtual {v4, v7, v8}, Lcom/android/dx/rop/code/RegisterSpecList;->set(ILcom/android/dx/rop/code/RegisterSpec;)V

    .line 717
    goto :goto_1

    .line 709
    .end local v6    # "array":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v8    # "index":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v9    # "value":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 737
    .end local v5    # "regAt":I
    :goto_1
    move-object v3, v4

    .end local v4    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v3    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :goto_2
    invoke-virtual {v3}, Lcom/android/dx/rop/code/RegisterSpecList;->setImmutable()V

    .line 738
    return-object v3

    nop

    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_1
        0xb5 -> :sswitch_0
    .end sparse-switch
.end method

.method private jopToRopOpcode(ILcom/android/dx/rop/cst/Constant;)I
    .locals 6
    .param p1, "jop"    # I
    .param p2, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 780
    const/16 v0, 0x34

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    .line 1020
    :sswitch_0
    const/16 v0, 0x25

    return v0

    .line 1017
    :sswitch_1
    const/16 v0, 0x24

    return v0

    .line 1014
    :sswitch_2
    const/16 v0, 0x2c

    return v0

    .line 1011
    :sswitch_3
    const/16 v0, 0x2b

    return v0

    .line 1008
    :sswitch_4
    const/16 v0, 0x23

    return v0

    .line 1005
    :sswitch_5
    const/16 v0, 0x22

    return v0

    .line 1002
    :sswitch_6
    const/16 v0, 0x29

    return v0

    .line 998
    :sswitch_7
    const/16 v0, 0x28

    return v0

    .line 995
    :sswitch_8
    const/16 v0, 0x3b

    return v0

    .line 992
    :sswitch_9
    const/16 v0, 0x35

    return v0

    .line 989
    :sswitch_a
    const/16 v0, 0x31

    return v0

    .line 981
    :sswitch_b
    move-object v1, p2

    check-cast v1, Lcom/android/dx/rop/cst/CstMethodRef;

    .line 982
    .local v1, "ref":Lcom/android/dx/rop/cst/CstMethodRef;
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstMethodRef;->isInstanceInit()Z

    move-result v2

    if-nez v2, :cond_1

    .line 983
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/cf/code/RopperMachine;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v3}, Lcom/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 986
    :cond_0
    const/16 v0, 0x33

    return v0

    .line 984
    :cond_1
    :goto_0
    return v0

    .line 933
    .end local v1    # "ref":Lcom/android/dx/rop/cst/CstMethodRef;
    :sswitch_c
    move-object v1, p2

    check-cast v1, Lcom/android/dx/rop/cst/CstMethodRef;

    .line 953
    .restart local v1    # "ref":Lcom/android/dx/rop/cst/CstMethodRef;
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstMethodRef;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v2

    iget-object v3, p0, Lcom/android/dx/cf/code/RopperMachine;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    invoke-virtual {v3}, Lcom/android/dx/cf/code/ConcreteMethod;->getDefiningClass()Lcom/android/dx/rop/cst/CstType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/dx/rop/cst/CstType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 954
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/dx/cf/code/RopperMachine;->methods:Lcom/android/dx/cf/iface/MethodList;

    invoke-interface {v3}, Lcom/android/dx/cf/iface/MethodList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 955
    iget-object v3, p0, Lcom/android/dx/cf/code/RopperMachine;->methods:Lcom/android/dx/cf/iface/MethodList;

    invoke-interface {v3, v2}, Lcom/android/dx/cf/iface/MethodList;->get(I)Lcom/android/dx/cf/iface/Method;

    move-result-object v3

    .line 956
    .local v3, "m":Lcom/android/dx/cf/iface/Method;
    invoke-interface {v3}, Lcom/android/dx/cf/iface/Method;->getAccessFlags()I

    move-result v4

    invoke-static {v4}, Lcom/android/dx/rop/code/AccessFlags;->isPrivate(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 957
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstMethodRef;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/dx/cf/iface/Method;->getNat()Lcom/android/dx/rop/cst/CstNat;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/dx/rop/cst/CstNat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 958
    return v0

    .line 954
    .end local v3    # "m":Lcom/android/dx/cf/iface/Method;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 965
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v1}, Lcom/android/dx/rop/cst/CstMethodRef;->isSignaturePolymorphic()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 966
    const/16 v0, 0x3a

    return v0

    .line 968
    :cond_4
    const/16 v0, 0x32

    return v0

    .line 930
    .end local v1    # "ref":Lcom/android/dx/rop/cst/CstMethodRef;
    :sswitch_d
    const/16 v0, 0x2f

    return v0

    .line 927
    :sswitch_e
    const/16 v0, 0x2d

    return v0

    .line 924
    :sswitch_f
    const/16 v0, 0x30

    return v0

    .line 921
    :sswitch_10
    const/16 v0, 0x2e

    return v0

    .line 918
    :sswitch_11
    const/16 v0, 0x21

    return v0

    .line 914
    :sswitch_12
    const/16 v0, 0xd

    return v0

    .line 911
    :sswitch_13
    const/4 v0, 0x6

    return v0

    .line 908
    :sswitch_14
    const/16 v0, 0xb

    return v0

    .line 904
    :sswitch_15
    const/16 v0, 0xc

    return v0

    .line 900
    :sswitch_16
    const/16 v0, 0xa

    return v0

    .line 896
    :sswitch_17
    const/16 v0, 0x9

    return v0

    .line 892
    :sswitch_18
    const/16 v0, 0x8

    return v0

    .line 886
    :sswitch_19
    const/4 v0, 0x7

    return v0

    .line 880
    :sswitch_1a
    const/16 v0, 0x1c

    return v0

    .line 876
    :sswitch_1b
    const/16 v0, 0x1b

    return v0

    .line 871
    :sswitch_1c
    const/16 v0, 0x20

    return v0

    .line 868
    :sswitch_1d
    const/16 v0, 0x1f

    return v0

    .line 865
    :sswitch_1e
    const/16 v0, 0x1e

    return v0

    .line 862
    :sswitch_1f
    const/16 v0, 0x1d

    return v0

    .line 848
    :sswitch_20
    const/16 v0, 0x16

    return v0

    .line 845
    :sswitch_21
    const/16 v0, 0x15

    return v0

    .line 842
    :sswitch_22
    const/16 v0, 0x14

    return v0

    .line 839
    :sswitch_23
    const/16 v0, 0x19

    return v0

    .line 836
    :sswitch_24
    const/16 v0, 0x18

    return v0

    .line 833
    :sswitch_25
    const/16 v0, 0x17

    return v0

    .line 830
    :sswitch_26
    const/16 v0, 0x13

    return v0

    .line 827
    :sswitch_27
    const/16 v0, 0x12

    return v0

    .line 824
    :sswitch_28
    const/16 v0, 0x11

    return v0

    .line 821
    :sswitch_29
    const/16 v0, 0x10

    return v0

    .line 818
    :sswitch_2a
    const/16 v0, 0xf

    return v0

    .line 815
    :sswitch_2b
    const/16 v0, 0xe

    return v0

    .line 794
    :sswitch_2c
    goto :goto_2

    .line 811
    :sswitch_2d
    const/16 v0, 0x27

    return v0

    .line 808
    :sswitch_2e
    const/16 v0, 0x26

    return v0

    .line 805
    :sswitch_2f
    const/4 v0, 0x2

    return v0

    .line 801
    :sswitch_30
    const/4 v0, 0x5

    return v0

    .line 797
    :sswitch_31
    const/4 v0, 0x1

    return v0

    .line 1024
    :goto_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "shouldn\'t happen"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_31
        0x12 -> :sswitch_30
        0x14 -> :sswitch_30
        0x15 -> :sswitch_2f
        0x2e -> :sswitch_2e
        0x36 -> :sswitch_2f
        0x4f -> :sswitch_2d
        0x57 -> :sswitch_2c
        0x58 -> :sswitch_2c
        0x59 -> :sswitch_2c
        0x5a -> :sswitch_2c
        0x5b -> :sswitch_2c
        0x5c -> :sswitch_2c
        0x5d -> :sswitch_2c
        0x5e -> :sswitch_2c
        0x5f -> :sswitch_2c
        0x60 -> :sswitch_2b
        0x64 -> :sswitch_2a
        0x68 -> :sswitch_29
        0x6c -> :sswitch_28
        0x70 -> :sswitch_27
        0x74 -> :sswitch_26
        0x78 -> :sswitch_25
        0x7a -> :sswitch_24
        0x7c -> :sswitch_23
        0x7e -> :sswitch_22
        0x80 -> :sswitch_21
        0x82 -> :sswitch_20
        0x84 -> :sswitch_2b
        0x85 -> :sswitch_1f
        0x86 -> :sswitch_1f
        0x87 -> :sswitch_1f
        0x88 -> :sswitch_1f
        0x89 -> :sswitch_1f
        0x8a -> :sswitch_1f
        0x8b -> :sswitch_1f
        0x8c -> :sswitch_1f
        0x8d -> :sswitch_1f
        0x8e -> :sswitch_1f
        0x8f -> :sswitch_1f
        0x90 -> :sswitch_1f
        0x91 -> :sswitch_1e
        0x92 -> :sswitch_1d
        0x93 -> :sswitch_1c
        0x94 -> :sswitch_1b
        0x95 -> :sswitch_1b
        0x96 -> :sswitch_1a
        0x97 -> :sswitch_1b
        0x98 -> :sswitch_1a
        0x99 -> :sswitch_19
        0x9a -> :sswitch_18
        0x9b -> :sswitch_17
        0x9c -> :sswitch_16
        0x9d -> :sswitch_15
        0x9e -> :sswitch_14
        0x9f -> :sswitch_19
        0xa0 -> :sswitch_18
        0xa1 -> :sswitch_17
        0xa2 -> :sswitch_16
        0xa3 -> :sswitch_15
        0xa4 -> :sswitch_14
        0xa5 -> :sswitch_19
        0xa6 -> :sswitch_18
        0xa7 -> :sswitch_13
        0xa8 -> :sswitch_2c
        0xa9 -> :sswitch_2c
        0xab -> :sswitch_12
        0xac -> :sswitch_11
        0xb1 -> :sswitch_11
        0xb2 -> :sswitch_10
        0xb3 -> :sswitch_f
        0xb4 -> :sswitch_e
        0xb5 -> :sswitch_d
        0xb6 -> :sswitch_c
        0xb7 -> :sswitch_b
        0xb8 -> :sswitch_a
        0xb9 -> :sswitch_9
        0xba -> :sswitch_8
        0xbb -> :sswitch_7
        0xbc -> :sswitch_6
        0xbd -> :sswitch_6
        0xbe -> :sswitch_5
        0xbf -> :sswitch_4
        0xc0 -> :sswitch_3
        0xc1 -> :sswitch_2
        0xc2 -> :sswitch_1
        0xc3 -> :sswitch_0
        0xc5 -> :sswitch_2c
        0xc6 -> :sswitch_19
        0xc7 -> :sswitch_18
    .end sparse-switch
.end method

.method private makeInvokePolymorphicInsn(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Insn;
    .locals 8
    .param p1, "rop"    # Lcom/android/dx/rop/code/Rop;
    .param p2, "pos"    # Lcom/android/dx/rop/code/SourcePosition;
    .param p3, "sources"    # Lcom/android/dx/rop/code/RegisterSpecList;
    .param p4, "catches"    # Lcom/android/dx/rop/type/TypeList;
    .param p5, "cst"    # Lcom/android/dx/rop/cst/Constant;

    .line 1029
    move-object v6, p5

    check-cast v6, Lcom/android/dx/rop/cst/CstMethodRef;

    .line 1030
    .local v6, "cstMethodRef":Lcom/android/dx/rop/cst/CstMethodRef;
    new-instance v7, Lcom/android/dx/rop/code/InvokePolymorphicInsn;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/dx/rop/code/InvokePolymorphicInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/CstMethodRef;)V

    return-object v7
.end method

.method private updateReturnOp(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;)V
    .locals 3
    .param p1, "op"    # Lcom/android/dx/rop/code/Rop;
    .param p2, "pos"    # Lcom/android/dx/rop/code/SourcePosition;

    .line 748
    if-eqz p1, :cond_4

    .line 752
    if-eqz p2, :cond_3

    .line 756
    iget-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returnOp:Lcom/android/dx/rop/code/Rop;

    if-nez v0, :cond_0

    .line 757
    iput-object p1, p0, Lcom/android/dx/cf/code/RopperMachine;->returnOp:Lcom/android/dx/rop/code/Rop;

    .line 758
    iput-object p2, p0, Lcom/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/android/dx/rop/code/SourcePosition;

    goto :goto_0

    .line 760
    :cond_0
    if-ne v0, p1, :cond_2

    .line 765
    invoke-virtual {p2}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v0

    iget-object v1, p0, Lcom/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/android/dx/rop/code/SourcePosition;

    invoke-virtual {v1}, Lcom/android/dx/rop/code/SourcePosition;->getLine()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 767
    iput-object p2, p0, Lcom/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/android/dx/rop/code/SourcePosition;

    .line 770
    :cond_1
    :goto_0
    return-void

    .line 761
    :cond_2
    new-instance v0, Lcom/android/dx/cf/code/SimException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return op mismatch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dx/cf/code/RopperMachine;->returnOp:Lcom/android/dx/rop/code/Rop;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/dx/cf/code/SimException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 753
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "pos == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 749
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "op == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canThrow()Z
    .locals 1

    .line 265
    iget-boolean v0, p0, Lcom/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    return v0
.end method

.method public getExtraBlockCount()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    return v0
.end method

.method public getInsns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/dx/rop/code/Insn;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPrimarySuccessorIndex()I
    .locals 1

    .line 246
    iget v0, p0, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    return v0
.end method

.method public getReturnAddress()Lcom/android/dx/cf/code/ReturnAddress;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/android/dx/cf/code/ReturnAddress;

    return-object v0
.end method

.method public getReturnOp()Lcom/android/dx/rop/code/Rop;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returnOp:Lcom/android/dx/rop/code/Rop;

    return-object v0
.end method

.method public getReturnPosition()Lcom/android/dx/rop/code/SourcePosition;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returnPosition:Lcom/android/dx/rop/code/SourcePosition;

    return-object v0
.end method

.method public hasJsr()Z
    .locals 1

    .line 273
    iget-boolean v0, p0, Lcom/android/dx/cf/code/RopperMachine;->hasJsr:Z

    return v0
.end method

.method public hasRet()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/android/dx/cf/code/ReturnAddress;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public returns()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returns:Z

    return v0
.end method

.method public run(Lcom/android/dx/cf/code/Frame;II)V
    .locals 28
    .param p1, "frame"    # Lcom/android/dx/cf/code/Frame;
    .param p2, "offset"    # I
    .param p3, "opcode"    # I

    .line 300
    move-object/from16 v7, p0

    move/from16 v1, p3

    iget v0, v7, Lcom/android/dx/cf/code/RopperMachine;->maxLocals:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/dx/cf/code/Frame;->getStack()Lcom/android/dx/cf/code/ExecutionStack;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/cf/code/ExecutionStack;->size()I

    move-result v2

    add-int v8, v0, v2

    .line 303
    .local v8, "stackPointer":I
    invoke-direct {v7, v1, v8}, Lcom/android/dx/cf/code/RopperMachine;->getSources(II)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 304
    .local v2, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v15

    .line 306
    .local v15, "sourceCount":I
    invoke-super/range {p0 .. p3}, Lcom/android/dx/cf/code/ValueAwareMachine;->run(Lcom/android/dx/cf/code/Frame;II)V

    .line 308
    iget-object v0, v7, Lcom/android/dx/cf/code/RopperMachine;->method:Lcom/android/dx/cf/code/ConcreteMethod;

    move/from16 v6, p2

    invoke-virtual {v0, v6}, Lcom/android/dx/cf/code/ConcreteMethod;->makeSourcePosistion(I)Lcom/android/dx/rop/code/SourcePosition;

    move-result-object v5

    .line 309
    .local v5, "pos":Lcom/android/dx/rop/code/SourcePosition;
    const/16 v0, 0x36

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v7, v0}, Lcom/android/dx/cf/code/RopperMachine;->getLocalTarget(Z)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v16

    .line 310
    .local v16, "localTarget":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/code/RopperMachine;->resultCount()I

    move-result v14

    .line 313
    .local v14, "destCount":I
    if-nez v14, :cond_1

    .line 314
    const/4 v0, 0x0

    .line 315
    .local v0, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    packed-switch v1, :pswitch_data_0

    .line 319
    move-object v13, v0

    goto :goto_1

    :pswitch_0
    return-void

    .line 322
    .end local v0    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1
    if-eqz v16, :cond_2

    .line 323
    move-object/from16 v0, v16

    move-object v13, v0

    .restart local v0    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    goto :goto_1

    .line 324
    .end local v0    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_2
    if-ne v14, v4, :cond_1f

    .line 325
    invoke-virtual {v7, v3}, Lcom/android/dx/cf/code/RopperMachine;->result(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    move-object v13, v0

    .line 370
    .local v13, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_1
    if-eqz v13, :cond_3

    move-object v0, v13

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/android/dx/rop/type/Type;->VOID:Lcom/android/dx/rop/type/Type;

    :goto_2
    move-object v12, v0

    .line 371
    .local v12, "destType":Lcom/android/dx/rop/type/TypeBearer;
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/code/RopperMachine;->getAuxCst()Lcom/android/dx/rop/cst/Constant;

    move-result-object v11

    .line 376
    .local v11, "cst":Lcom/android/dx/rop/cst/Constant;
    const/16 v0, 0xc5

    if-ne v1, v0, :cond_6

    .line 377
    iput-boolean v4, v7, Lcom/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 381
    const/4 v0, 0x6

    iput v0, v7, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 387
    nop

    .line 388
    invoke-virtual {v13}, Lcom/android/dx/rop/code/RegisterSpec;->getNextReg()I

    move-result v0

    sget-object v9, Lcom/android/dx/rop/type/Type;->INT_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v0, v9}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v0

    .line 389
    .local v0, "dimsReg":Lcom/android/dx/rop/code/RegisterSpec;
    sget-object v9, Lcom/android/dx/rop/type/Type;->INT_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v9, v15}, Lcom/android/dx/rop/code/Rops;->opFilledNewArray(Lcom/android/dx/rop/type/TypeBearer;I)Lcom/android/dx/rop/code/Rop;

    move-result-object v17

    .line 390
    .local v17, "rop":Lcom/android/dx/rop/code/Rop;
    new-instance v18, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v10, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    sget-object v19, Lcom/android/dx/rop/cst/CstType;->INT_ARRAY:Lcom/android/dx/rop/cst/CstType;

    move-object/from16 v9, v18

    move-object/from16 v20, v10

    move-object/from16 v10, v17

    move-object v3, v11

    .end local v11    # "cst":Lcom/android/dx/rop/cst/Constant;
    .local v3, "cst":Lcom/android/dx/rop/cst/Constant;
    move-object v11, v5

    move-object/from16 v22, v12

    .end local v12    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .local v22, "destType":Lcom/android/dx/rop/type/TypeBearer;
    move-object v12, v2

    move-object/from16 v23, v13

    .end local v13    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local v23, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    move-object/from16 v13, v20

    move/from16 v20, v14

    .end local v14    # "destCount":I
    .local v20, "destCount":I
    move-object/from16 v14, v19

    invoke-direct/range {v9 .. v14}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 392
    .local v9, "insn":Lcom/android/dx/rop/code/Insn;
    iget-object v10, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    sget-object v10, Lcom/android/dx/rop/type/Type;->INT_ARRAY:Lcom/android/dx/rop/type/Type;

    invoke-static {v10}, Lcom/android/dx/rop/code/Rops;->opMoveResult(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v14

    .line 396
    .end local v17    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v14, "rop":Lcom/android/dx/rop/code/Rop;
    new-instance v10, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v11, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v10, v14, v5, v0, v11}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v13, v10

    .line 397
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    .local v13, "insn":Lcom/android/dx/rop/code/Insn;
    iget-object v9, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    move-object v9, v3

    check-cast v9, Lcom/android/dx/rop/cst/CstType;

    invoke-virtual {v9}, Lcom/android/dx/rop/cst/CstType;->getClassType()Lcom/android/dx/rop/type/Type;

    move-result-object v9

    .line 411
    .local v9, "componentType":Lcom/android/dx/rop/type/Type;
    const/4 v10, 0x0

    move-object v12, v9

    .end local v9    # "componentType":Lcom/android/dx/rop/type/Type;
    .local v10, "i":I
    .local v12, "componentType":Lcom/android/dx/rop/type/Type;
    :goto_3
    if-ge v10, v15, :cond_4

    .line 412
    invoke-virtual {v12}, Lcom/android/dx/rop/type/Type;->getComponentType()Lcom/android/dx/rop/type/Type;

    move-result-object v12

    .line 411
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 415
    .end local v10    # "i":I
    :cond_4
    nop

    .line 416
    invoke-virtual/range {v23 .. v23}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    sget-object v10, Lcom/android/dx/rop/type/Type;->CLASS:Lcom/android/dx/rop/type/Type;

    invoke-static {v9, v10}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 418
    .local v11, "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v12}, Lcom/android/dx/rop/type/Type;->isPrimitive()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 424
    nop

    .line 425
    invoke-static {v12}, Lcom/android/dx/rop/cst/CstFieldRef;->forPrimitiveType(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstFieldRef;

    move-result-object v17

    .line 426
    .local v17, "typeField":Lcom/android/dx/rop/cst/CstFieldRef;
    new-instance v18, Lcom/android/dx/rop/code/ThrowingCstInsn;

    sget-object v10, Lcom/android/dx/rop/code/Rops;->GET_STATIC_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v19, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    iget-object v9, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    move-object/from16 v24, v9

    move-object/from16 v9, v18

    move-object/from16 v25, v11

    .end local v11    # "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    .local v25, "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    move-object v11, v5

    move-object v4, v12

    .end local v12    # "componentType":Lcom/android/dx/rop/type/Type;
    .local v4, "componentType":Lcom/android/dx/rop/type/Type;
    move-object/from16 v12, v19

    move-object/from16 v19, v13

    .end local v13    # "insn":Lcom/android/dx/rop/code/Insn;
    .local v19, "insn":Lcom/android/dx/rop/code/Insn;
    move-object/from16 v13, v24

    move-object/from16 v24, v14

    .end local v14    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v24, "rop":Lcom/android/dx/rop/code/Rop;
    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 429
    .end local v17    # "typeField":Lcom/android/dx/rop/cst/CstFieldRef;
    .end local v19    # "insn":Lcom/android/dx/rop/code/Insn;
    .local v9, "insn":Lcom/android/dx/rop/code/Insn;
    goto :goto_4

    .line 434
    .end local v4    # "componentType":Lcom/android/dx/rop/type/Type;
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v24    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local v25    # "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v11    # "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v12    # "componentType":Lcom/android/dx/rop/type/Type;
    .restart local v13    # "insn":Lcom/android/dx/rop/code/Insn;
    .restart local v14    # "rop":Lcom/android/dx/rop/code/Rop;
    :cond_5
    move-object/from16 v25, v11

    move-object v4, v12

    move-object/from16 v19, v13

    move-object/from16 v24, v14

    .end local v11    # "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v12    # "componentType":Lcom/android/dx/rop/type/Type;
    .end local v13    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v14    # "rop":Lcom/android/dx/rop/code/Rop;
    .restart local v4    # "componentType":Lcom/android/dx/rop/type/Type;
    .restart local v19    # "insn":Lcom/android/dx/rop/code/Insn;
    .restart local v24    # "rop":Lcom/android/dx/rop/code/Rop;
    .restart local v25    # "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    new-instance v17, Lcom/android/dx/rop/code/ThrowingCstInsn;

    sget-object v10, Lcom/android/dx/rop/code/Rops;->CONST_OBJECT:Lcom/android/dx/rop/code/Rop;

    sget-object v12, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    iget-object v13, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    new-instance v14, Lcom/android/dx/rop/cst/CstType;

    invoke-direct {v14, v4}, Lcom/android/dx/rop/cst/CstType;-><init>(Lcom/android/dx/rop/type/Type;)V

    move-object/from16 v9, v17

    move-object v11, v5

    invoke-direct/range {v9 .. v14}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 439
    .end local v19    # "insn":Lcom/android/dx/rop/code/Insn;
    .restart local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    :goto_4
    iget-object v10, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual/range {v25 .. v25}, Lcom/android/dx/rop/code/RegisterSpec;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v10

    invoke-static {v10}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v14

    .line 443
    .end local v24    # "rop":Lcom/android/dx/rop/code/Rop;
    .restart local v14    # "rop":Lcom/android/dx/rop/code/Rop;
    new-instance v10, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v11, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    move-object/from16 v13, v25

    .end local v25    # "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    .local v13, "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-direct {v10, v14, v5, v13, v11}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v12, v10

    .line 444
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    .local v12, "insn":Lcom/android/dx/rop/code/Insn;
    iget-object v9, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 454
    nop

    .line 455
    invoke-virtual/range {v23 .. v23}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v9

    sget-object v10, Lcom/android/dx/rop/type/Type;->OBJECT:Lcom/android/dx/rop/type/Type;

    invoke-static {v9, v10}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 457
    .local v11, "objectReg":Lcom/android/dx/rop/code/RegisterSpec;
    new-instance v17, Lcom/android/dx/rop/code/ThrowingCstInsn;

    sget-object v18, Lcom/android/dx/cf/code/RopperMachine;->MULTIANEWARRAY_METHOD:Lcom/android/dx/rop/cst/CstMethodRef;

    .line 458
    invoke-virtual/range {v18 .. v18}, Lcom/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v9

    invoke-static {v9}, Lcom/android/dx/rop/code/Rops;->opInvokeStatic(Lcom/android/dx/rop/type/Prototype;)Lcom/android/dx/rop/code/Rop;

    move-result-object v10

    .line 459
    invoke-static {v13, v0}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v19

    iget-object v9, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    move-object/from16 v24, v9

    move-object/from16 v9, v17

    move-object/from16 v25, v0

    move-object v0, v11

    .end local v11    # "objectReg":Lcom/android/dx/rop/code/RegisterSpec;
    .local v0, "objectReg":Lcom/android/dx/rop/code/RegisterSpec;
    .local v25, "dimsReg":Lcom/android/dx/rop/code/RegisterSpec;
    move-object v11, v5

    move-object/from16 v26, v12

    .end local v12    # "insn":Lcom/android/dx/rop/code/Insn;
    .local v26, "insn":Lcom/android/dx/rop/code/Insn;
    move-object/from16 v12, v19

    move-object/from16 v19, v13

    .end local v13    # "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    .local v19, "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    move-object/from16 v13, v24

    move-object/from16 v24, v14

    .end local v14    # "rop":Lcom/android/dx/rop/code/Rop;
    .restart local v24    # "rop":Lcom/android/dx/rop/code/Rop;
    move-object/from16 v14, v18

    invoke-direct/range {v9 .. v14}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 461
    .end local v26    # "insn":Lcom/android/dx/rop/code/Insn;
    .restart local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    iget-object v10, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual/range {v18 .. v18}, Lcom/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v10

    .line 465
    invoke-virtual {v10}, Lcom/android/dx/rop/type/Prototype;->getReturnType()Lcom/android/dx/rop/type/Type;

    move-result-object v10

    .line 464
    invoke-static {v10}, Lcom/android/dx/rop/code/Rops;->opMoveResult(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v10

    .line 466
    .end local v24    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v10, "rop":Lcom/android/dx/rop/code/Rop;
    new-instance v11, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v12, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v11, v10, v5, v0, v12}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v9, v11

    .line 467
    iget-object v11, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 474
    const/16 v1, 0xc0

    .line 475
    .end local p3    # "opcode":I
    .local v1, "opcode":I
    invoke-static {v0}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 476
    .end local v0    # "objectReg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v4    # "componentType":Lcom/android/dx/rop/type/Type;
    .end local v19    # "classReg":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v25    # "dimsReg":Lcom/android/dx/rop/code/RegisterSpec;
    move v0, v1

    goto :goto_5

    .end local v1    # "opcode":I
    .end local v3    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v10    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local v20    # "destCount":I
    .end local v22    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .end local v23    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local v11, "cst":Lcom/android/dx/rop/cst/Constant;
    .local v12, "destType":Lcom/android/dx/rop/type/TypeBearer;
    .local v13, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local v14, "destCount":I
    .restart local p3    # "opcode":I
    :cond_6
    move-object v3, v11

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    move/from16 v20, v14

    .end local v11    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v12    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .end local v13    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v14    # "destCount":I
    .restart local v3    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v20    # "destCount":I
    .restart local v22    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .restart local v23    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    const/16 v0, 0xa8

    if-ne v1, v0, :cond_7

    .line 478
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/dx/cf/code/RopperMachine;->hasJsr:Z

    .line 479
    return-void

    .line 480
    :cond_7
    const/16 v0, 0xa9

    if-ne v1, v0, :cond_8

    .line 482
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v7, v0}, Lcom/android/dx/cf/code/RopperMachine;->arg(I)Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v0

    check-cast v0, Lcom/android/dx/cf/code/ReturnAddress;

    iput-object v0, v7, Lcom/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/android/dx/cf/code/ReturnAddress;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    nop

    .line 488
    return-void

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, "ex":Ljava/lang/ClassCastException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v9, "Argument to RET was not a ReturnAddress"

    invoke-direct {v4, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 480
    .end local v0    # "ex":Ljava/lang/ClassCastException;
    :cond_8
    move v0, v1

    .line 491
    .end local p3    # "opcode":I
    .local v0, "opcode":I
    :goto_5
    invoke-direct {v7, v0, v3}, Lcom/android/dx/cf/code/RopperMachine;->jopToRopOpcode(ILcom/android/dx/rop/cst/Constant;)I

    move-result v1

    .line 492
    .local v1, "ropOpcode":I
    move-object/from16 v4, v22

    .end local v22    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .local v4, "destType":Lcom/android/dx/rop/type/TypeBearer;
    invoke-static {v1, v4, v2, v3}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    .line 494
    .local v9, "rop":Lcom/android/dx/rop/code/Rop;
    const/4 v10, 0x0

    .line 495
    .local v10, "moveResult":Lcom/android/dx/rop/code/Insn;
    move-object/from16 v11, v23

    .end local v23    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local v11, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    if-eqz v11, :cond_a

    invoke-virtual {v9}, Lcom/android/dx/rop/code/Rop;->isCallLike()Z

    move-result v12

    if-eqz v12, :cond_a

    .line 500
    iget v12, v7, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    const/4 v13, 0x1

    add-int/2addr v12, v13

    iput v12, v7, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 503
    invoke-virtual {v9}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v12

    const/16 v13, 0x3b

    if-ne v12, v13, :cond_9

    .line 504
    move-object v12, v3

    check-cast v12, Lcom/android/dx/rop/cst/CstCallSiteRef;

    invoke-virtual {v12}, Lcom/android/dx/rop/cst/CstCallSiteRef;->getReturnType()Lcom/android/dx/rop/type/Type;

    move-result-object v12

    .local v12, "returnType":Lcom/android/dx/rop/type/Type;
    goto :goto_6

    .line 506
    .end local v12    # "returnType":Lcom/android/dx/rop/type/Type;
    :cond_9
    move-object v12, v3

    check-cast v12, Lcom/android/dx/rop/cst/CstMethodRef;

    invoke-virtual {v12}, Lcom/android/dx/rop/cst/CstMethodRef;->getPrototype()Lcom/android/dx/rop/type/Prototype;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/dx/rop/type/Prototype;->getReturnType()Lcom/android/dx/rop/type/Type;

    move-result-object v12

    .line 508
    .restart local v12    # "returnType":Lcom/android/dx/rop/type/Type;
    :goto_6
    new-instance v13, Lcom/android/dx/rop/code/PlainInsn;

    invoke-static {v12}, Lcom/android/dx/rop/code/Rops;->opMoveResult(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v14

    sget-object v6, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v13, v14, v5, v11, v6}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v10, v13

    .line 511
    const/4 v13, 0x0

    .line 512
    .end local v11    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v12    # "returnType":Lcom/android/dx/rop/type/Type;
    .restart local v13    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    move-object v6, v10

    move-object v14, v13

    goto :goto_7

    .end local v13    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v11    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_a
    if-eqz v11, :cond_b

    invoke-virtual {v9}, Lcom/android/dx/rop/code/Rop;->canThrow()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 517
    iget v6, v7, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    const/4 v12, 0x1

    add-int/2addr v6, v12

    iput v6, v7, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 519
    new-instance v6, Lcom/android/dx/rop/code/PlainInsn;

    .line 520
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v12

    invoke-static {v12}, Lcom/android/dx/rop/code/Rops;->opMoveResultPseudo(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v12

    sget-object v13, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v6, v12, v5, v11, v13}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v10, v6

    .line 523
    const/4 v13, 0x0

    move-object v14, v13

    .end local v11    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v13    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    goto :goto_7

    .line 525
    .end local v13    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v11    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_b
    move-object v6, v10

    move-object v14, v11

    .end local v10    # "moveResult":Lcom/android/dx/rop/code/Insn;
    .end local v11    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local v6, "moveResult":Lcom/android/dx/rop/code/Insn;
    .local v14, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_7
    const/16 v10, 0x29

    if-ne v1, v10, :cond_c

    .line 538
    invoke-virtual {v9}, Lcom/android/dx/rop/code/Rop;->getResult()Lcom/android/dx/rop/type/Type;

    move-result-object v10

    invoke-static {v10}, Lcom/android/dx/rop/cst/CstType;->intern(Lcom/android/dx/rop/type/Type;)Lcom/android/dx/rop/cst/CstType;

    move-result-object v11

    move v3, v1

    move-object v1, v9

    move-object/from16 v17, v11

    .end local v3    # "cst":Lcom/android/dx/rop/cst/Constant;
    .local v11, "cst":Lcom/android/dx/rop/cst/Constant;
    goto/16 :goto_b

    .line 539
    .end local v11    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v3    # "cst":Lcom/android/dx/rop/cst/Constant;
    :cond_c
    if-nez v3, :cond_11

    const/4 v10, 0x2

    if-ne v15, v10, :cond_11

    .line 540
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v10

    .line 541
    .local v10, "firstType":Lcom/android/dx/rop/type/TypeBearer;
    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v11

    .line 543
    .local v11, "lastType":Lcom/android/dx/rop/type/TypeBearer;
    invoke-interface {v11}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-interface {v10}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_8

    :cond_d
    move/from16 p3, v1

    move-object/from16 v17, v3

    goto :goto_a

    :cond_e
    :goto_8
    iget-object v12, v7, Lcom/android/dx/cf/code/RopperMachine;->advice:Lcom/android/dx/rop/code/TranslationAdvice;

    .line 544
    move/from16 p3, v1

    const/4 v13, 0x0

    .end local v1    # "ropOpcode":I
    .local p3, "ropOpcode":I
    invoke-virtual {v2, v13}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v1

    .line 545
    move-object/from16 v17, v3

    const/4 v13, 0x1

    .end local v3    # "cst":Lcom/android/dx/rop/cst/Constant;
    .local v17, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v2, v13}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v3

    .line 544
    invoke-interface {v12, v9, v1, v3}, Lcom/android/dx/rop/code/TranslationAdvice;->hasConstantOperation(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 547
    invoke-interface {v11}, Lcom/android/dx/rop/type/TypeBearer;->isConstant()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 554
    move-object v1, v11

    check-cast v1, Lcom/android/dx/rop/cst/Constant;

    .line 555
    .end local v17    # "cst":Lcom/android/dx/rop/cst/Constant;
    .local v1, "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutLast()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    .line 558
    invoke-virtual {v9}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v3

    const/16 v12, 0xf

    if-ne v3, v12, :cond_f

    .line 559
    const/16 v3, 0xe

    .line 560
    .end local p3    # "ropOpcode":I
    .local v3, "ropOpcode":I
    move-object v12, v11

    check-cast v12, Lcom/android/dx/rop/cst/CstInteger;

    .line 561
    .local v12, "cstInt":Lcom/android/dx/rop/cst/CstInteger;
    invoke-virtual {v12}, Lcom/android/dx/rop/cst/CstInteger;->getValue()I

    move-result v13

    neg-int v13, v13

    invoke-static {v13}, Lcom/android/dx/rop/cst/CstInteger;->make(I)Lcom/android/dx/rop/cst/CstInteger;

    move-result-object v1

    .line 562
    .end local v12    # "cstInt":Lcom/android/dx/rop/cst/CstInteger;
    move/from16 v27, v3

    move-object v3, v1

    move/from16 v1, v27

    goto :goto_9

    .line 558
    .end local v3    # "ropOpcode":I
    .restart local p3    # "ropOpcode":I
    :cond_f
    move-object v3, v1

    move/from16 v1, p3

    goto :goto_9

    .line 570
    .end local v1    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v17    # "cst":Lcom/android/dx/rop/cst/Constant;
    :cond_10
    move-object v1, v10

    check-cast v1, Lcom/android/dx/rop/cst/Constant;

    .line 571
    .end local v17    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v1    # "cst":Lcom/android/dx/rop/cst/Constant;
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->withoutFirst()Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v2

    move-object v3, v1

    move/from16 v1, p3

    .line 574
    .end local p3    # "ropOpcode":I
    .local v1, "ropOpcode":I
    .local v3, "cst":Lcom/android/dx/rop/cst/Constant;
    :goto_9
    invoke-static {v1, v4, v2, v3}, Lcom/android/dx/rop/code/Rops;->ropFor(ILcom/android/dx/rop/type/TypeBearer;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    move-object/from16 v17, v3

    move v3, v1

    move-object v1, v9

    goto :goto_b

    .line 539
    .end local v10    # "firstType":Lcom/android/dx/rop/type/TypeBearer;
    .end local v11    # "lastType":Lcom/android/dx/rop/type/TypeBearer;
    :cond_11
    move/from16 p3, v1

    move-object/from16 v17, v3

    .line 578
    .end local v1    # "ropOpcode":I
    .end local v3    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local v17    # "cst":Lcom/android/dx/rop/cst/Constant;
    .restart local p3    # "ropOpcode":I
    :cond_12
    :goto_a
    move/from16 v3, p3

    move-object v1, v9

    .end local v9    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local p3    # "ropOpcode":I
    .local v1, "rop":Lcom/android/dx/rop/code/Rop;
    .local v3, "ropOpcode":I
    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/code/RopperMachine;->getAuxCases()Lcom/android/dx/cf/code/SwitchList;

    move-result-object v18

    .line 579
    .local v18, "cases":Lcom/android/dx/cf/code/SwitchList;
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/code/RopperMachine;->getInitValues()Ljava/util/ArrayList;

    move-result-object v19

    .line 580
    .local v19, "initValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/Constant;>;"
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->canThrow()Z

    move-result v22

    .line 582
    .local v22, "canThrow":Z
    iget-boolean v9, v7, Lcom/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    or-int v9, v9, v22

    iput-boolean v9, v7, Lcom/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 584
    const/4 v9, 0x0

    if-eqz v18, :cond_14

    .line 585
    invoke-virtual/range {v18 .. v18}, Lcom/android/dx/cf/code/SwitchList;->size()I

    move-result v10

    if-nez v10, :cond_13

    .line 587
    new-instance v10, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v11, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    sget-object v12, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    invoke-direct {v10, v11, v5, v9, v12}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v9, v10

    .line 589
    .local v9, "insn":Lcom/android/dx/rop/code/Insn;
    const/4 v10, 0x0

    iput v10, v7, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    move/from16 v21, v3

    move-object/from16 v23, v4

    move-object v3, v5

    move-object v4, v6

    const/4 v5, 0x1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_f

    .line 591
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    :cond_13
    invoke-virtual/range {v18 .. v18}, Lcom/android/dx/cf/code/SwitchList;->getValues()Lcom/android/dx/util/IntList;

    move-result-object v21

    .line 592
    .local v21, "values":Lcom/android/dx/util/IntList;
    new-instance v23, Lcom/android/dx/rop/code/SwitchInsn;

    move-object/from16 v9, v23

    move-object v10, v1

    move-object v11, v5

    move-object v12, v14

    move-object v13, v2

    move-object/from16 p3, v14

    .end local v14    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local p3, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    move-object/from16 v14, v21

    invoke-direct/range {v9 .. v14}, Lcom/android/dx/rop/code/SwitchInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/util/IntList;)V

    .line 593
    .restart local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    invoke-virtual/range {v21 .. v21}, Lcom/android/dx/util/IntList;->size()I

    move-result v10

    iput v10, v7, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 594
    .end local v21    # "values":Lcom/android/dx/util/IntList;
    move-object/from16 v14, p3

    move/from16 v21, v3

    move-object/from16 v23, v4

    move-object v3, v5

    move-object v4, v6

    const/4 v5, 0x1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_f

    .line 595
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local p3    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v14    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_14
    move-object/from16 p3, v14

    .end local v14    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local p3    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    const/16 v10, 0x21

    if-ne v3, v10, :cond_17

    .line 601
    invoke-virtual {v2}, Lcom/android/dx/rop/code/RegisterSpecList;->size()I

    move-result v10

    if-eqz v10, :cond_16

    .line 602
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 603
    .local v11, "source":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v12

    .line 604
    .local v12, "type":Lcom/android/dx/rop/type/TypeBearer;
    invoke-virtual {v11}, Lcom/android/dx/rop/code/RegisterSpec;->getReg()I

    move-result v13

    if-eqz v13, :cond_15

    .line 605
    iget-object v13, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    new-instance v14, Lcom/android/dx/rop/code/PlainInsn;

    invoke-static {v12}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v9

    .line 606
    move-object/from16 v24, v2

    .end local v2    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .local v24, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    invoke-static {v10, v12}, Lcom/android/dx/rop/code/RegisterSpec;->make(ILcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v2

    invoke-direct {v14, v9, v5, v2, v11}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 605
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 604
    .end local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v2    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_15
    move-object/from16 v24, v2

    .end local v2    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    goto :goto_c

    .line 601
    .end local v11    # "source":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v12    # "type":Lcom/android/dx/rop/type/TypeBearer;
    .end local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v2    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_16
    move-object/from16 v24, v2

    .line 610
    .end local v2    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :goto_c
    new-instance v2, Lcom/android/dx/rop/code/PlainInsn;

    sget-object v9, Lcom/android/dx/rop/code/Rops;->GOTO:Lcom/android/dx/rop/code/Rop;

    sget-object v10, Lcom/android/dx/rop/code/RegisterSpecList;->EMPTY:Lcom/android/dx/rop/code/RegisterSpecList;

    const/4 v11, 0x0

    invoke-direct {v2, v9, v5, v11, v10}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v9, v2

    .line 611
    .restart local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    const/4 v2, 0x0

    iput v2, v7, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 612
    invoke-direct {v7, v1, v5}, Lcom/android/dx/cf/code/RopperMachine;->updateReturnOp(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;)V

    .line 613
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/dx/cf/code/RopperMachine;->returns:Z

    move-object/from16 v14, p3

    move-object v2, v1

    move/from16 v21, v3

    move-object/from16 v23, v4

    move-object v3, v5

    move-object v4, v6

    move-object v1, v9

    move v5, v10

    move-object/from16 v6, v24

    goto/16 :goto_f

    .line 614
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v2    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_17
    move-object/from16 v24, v2

    const/4 v10, 0x1

    .end local v2    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    if-eqz v17, :cond_1a

    .line 615
    if-eqz v22, :cond_19

    .line 616
    invoke-virtual {v1}, Lcom/android/dx/rop/code/Rop;->getOpcode()I

    move-result v2

    const/16 v9, 0x3a

    if-ne v2, v9, :cond_18

    .line 617
    iget-object v9, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    move-object v14, v1

    .end local v1    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v14, "rop":Lcom/android/dx/rop/code/Rop;
    move-object/from16 v1, p0

    move-object/from16 v13, v24

    .end local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .local v13, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    move-object v2, v14

    move/from16 v21, v3

    .end local v3    # "ropOpcode":I
    .local v21, "ropOpcode":I
    move-object v3, v5

    move-object/from16 v23, v4

    move v12, v10

    .end local v4    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .local v23, "destType":Lcom/android/dx/rop/type/TypeBearer;
    move-object v4, v13

    move-object v10, v5

    .end local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .local v10, "pos":Lcom/android/dx/rop/code/SourcePosition;
    move-object v5, v9

    move-object v11, v6

    .end local v6    # "moveResult":Lcom/android/dx/rop/code/Insn;
    .local v11, "moveResult":Lcom/android/dx/rop/code/Insn;
    move-object/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/dx/cf/code/RopperMachine;->makeInvokePolymorphicInsn(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)Lcom/android/dx/rop/code/Insn;

    move-result-object v1

    move-object v9, v1

    move-object v3, v10

    move-object v4, v11

    move v5, v12

    move-object v6, v13

    .local v1, "insn":Lcom/android/dx/rop/code/Insn;
    goto :goto_d

    .line 619
    .end local v10    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .end local v11    # "moveResult":Lcom/android/dx/rop/code/Insn;
    .end local v13    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v14    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local v21    # "ropOpcode":I
    .end local v23    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .local v1, "rop":Lcom/android/dx/rop/code/Rop;
    .restart local v3    # "ropOpcode":I
    .restart local v4    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .restart local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .restart local v6    # "moveResult":Lcom/android/dx/rop/code/Insn;
    .restart local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_18
    move-object v14, v1

    move/from16 v21, v3

    move-object/from16 v23, v4

    move-object v11, v6

    move v12, v10

    move-object/from16 v13, v24

    move-object v10, v5

    .end local v1    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local v3    # "ropOpcode":I
    .end local v4    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .end local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .end local v6    # "moveResult":Lcom/android/dx/rop/code/Insn;
    .end local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v10    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .restart local v11    # "moveResult":Lcom/android/dx/rop/code/Insn;
    .restart local v13    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v14    # "rop":Lcom/android/dx/rop/code/Rop;
    .restart local v21    # "ropOpcode":I
    .restart local v23    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    new-instance v1, Lcom/android/dx/rop/code/ThrowingCstInsn;

    iget-object v2, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    move-object v9, v1

    move-object v3, v10

    .end local v10    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .local v3, "pos":Lcom/android/dx/rop/code/SourcePosition;
    move-object v10, v14

    move-object v4, v11

    .end local v11    # "moveResult":Lcom/android/dx/rop/code/Insn;
    .local v4, "moveResult":Lcom/android/dx/rop/code/Insn;
    move-object v11, v3

    move v5, v12

    move-object v12, v13

    move-object v6, v13

    .end local v13    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .local v6, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    move-object v13, v2

    move-object v2, v14

    .end local v14    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v2, "rop":Lcom/android/dx/rop/code/Rop;
    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/android/dx/rop/code/ThrowingCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;Lcom/android/dx/rop/cst/Constant;)V

    .line 621
    .restart local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    :goto_d
    iput-boolean v5, v7, Lcom/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 622
    iget-object v1, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    iput v1, v7, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    move-object/from16 v14, p3

    move-object v1, v9

    goto/16 :goto_f

    .line 624
    .end local v2    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v21    # "ropOpcode":I
    .end local v23    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .restart local v1    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v3, "ropOpcode":I
    .local v4, "destType":Lcom/android/dx/rop/type/TypeBearer;
    .restart local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .local v6, "moveResult":Lcom/android/dx/rop/code/Insn;
    .restart local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_19
    move-object v2, v1

    move/from16 v21, v3

    move-object/from16 v23, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v10

    move-object/from16 v6, v24

    .end local v1    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .end local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v2    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v3, "pos":Lcom/android/dx/rop/code/SourcePosition;
    .local v4, "moveResult":Lcom/android/dx/rop/code/Insn;
    .local v6, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v21    # "ropOpcode":I
    .restart local v23    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    new-instance v1, Lcom/android/dx/rop/code/PlainCstInsn;

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v12, p3

    move-object v13, v6

    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/android/dx/rop/code/PlainCstInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/cst/Constant;)V

    move-object/from16 v14, p3

    .restart local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    goto :goto_f

    .line 626
    .end local v2    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v21    # "ropOpcode":I
    .end local v23    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .restart local v1    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v3, "ropOpcode":I
    .local v4, "destType":Lcom/android/dx/rop/type/TypeBearer;
    .restart local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .local v6, "moveResult":Lcom/android/dx/rop/code/Insn;
    .restart local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    :cond_1a
    move-object v2, v1

    move/from16 v21, v3

    move-object/from16 v23, v4

    move-object v3, v5

    move-object v4, v6

    move v5, v10

    move-object/from16 v6, v24

    .end local v1    # "rop":Lcom/android/dx/rop/code/Rop;
    .end local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .end local v24    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v2    # "rop":Lcom/android/dx/rop/code/Rop;
    .local v3, "pos":Lcom/android/dx/rop/code/SourcePosition;
    .local v4, "moveResult":Lcom/android/dx/rop/code/Insn;
    .local v6, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v21    # "ropOpcode":I
    .restart local v23    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    if-eqz v22, :cond_1c

    .line 627
    new-instance v1, Lcom/android/dx/rop/code/ThrowingInsn;

    iget-object v9, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    invoke-direct {v1, v2, v3, v6, v9}, Lcom/android/dx/rop/code/ThrowingInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Lcom/android/dx/rop/type/TypeList;)V

    move-object v9, v1

    .line 628
    .restart local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    iput-boolean v5, v7, Lcom/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 629
    const/16 v1, 0xbf

    if-ne v0, v1, :cond_1b

    .line 635
    const/4 v1, -0x1

    iput v1, v7, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    goto :goto_e

    .line 637
    :cond_1b
    iget-object v1, v7, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    invoke-interface {v1}, Lcom/android/dx/rop/type/TypeList;->size()I

    move-result v1

    iput v1, v7, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 643
    :goto_e
    move-object/from16 v14, p3

    move-object v1, v9

    goto :goto_f

    .line 640
    .end local v9    # "insn":Lcom/android/dx/rop/code/Insn;
    :cond_1c
    new-instance v1, Lcom/android/dx/rop/code/PlainInsn;

    move-object/from16 v14, p3

    .end local p3    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local v14, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-direct {v1, v2, v3, v14, v6}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpecList;)V

    move-object v9, v1

    .line 643
    .local v1, "insn":Lcom/android/dx/rop/code/Insn;
    :goto_f
    iget-object v9, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 645
    if-eqz v4, :cond_1d

    .line 646
    iget-object v9, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    :cond_1d
    if-eqz v19, :cond_1e

    .line 658
    iget v9, v7, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    add-int/2addr v9, v5

    iput v9, v7, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 659
    new-instance v5, Lcom/android/dx/rop/code/FillArrayDataInsn;

    sget-object v10, Lcom/android/dx/rop/code/Rops;->FILL_ARRAY_DATA:Lcom/android/dx/rop/code/Rop;

    .line 660
    invoke-virtual {v4}, Lcom/android/dx/rop/code/Insn;->getResult()Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    invoke-static {v9}, Lcom/android/dx/rop/code/RegisterSpecList;->make(Lcom/android/dx/rop/code/RegisterSpec;)Lcom/android/dx/rop/code/RegisterSpecList;

    move-result-object v12

    move-object v9, v5

    move-object v11, v3

    move-object/from16 v13, v19

    move-object/from16 v24, v14

    .end local v14    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local v24, "dest":Lcom/android/dx/rop/code/RegisterSpec;
    move-object/from16 v14, v17

    invoke-direct/range {v9 .. v14}, Lcom/android/dx/rop/code/FillArrayDataInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecList;Ljava/util/ArrayList;Lcom/android/dx/rop/cst/Constant;)V

    move-object v1, v5

    .line 662
    iget-object v5, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 657
    .end local v24    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v14    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :cond_1e
    move-object/from16 v24, v14

    .line 664
    .end local v14    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .restart local v24    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    :goto_10
    return-void

    .line 346
    .end local v0    # "opcode":I
    .end local v1    # "insn":Lcom/android/dx/rop/code/Insn;
    .end local v3    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .end local v4    # "moveResult":Lcom/android/dx/rop/code/Insn;
    .end local v6    # "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .end local v17    # "cst":Lcom/android/dx/rop/cst/Constant;
    .end local v18    # "cases":Lcom/android/dx/cf/code/SwitchList;
    .end local v19    # "initValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/dx/rop/cst/Constant;>;"
    .end local v20    # "destCount":I
    .end local v21    # "ropOpcode":I
    .end local v22    # "canThrow":Z
    .end local v23    # "destType":Lcom/android/dx/rop/type/TypeBearer;
    .end local v24    # "dest":Lcom/android/dx/rop/code/RegisterSpec;
    .local v2, "sources":Lcom/android/dx/rop/code/RegisterSpecList;
    .restart local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .local v14, "destCount":I
    .local p3, "opcode":I
    :cond_1f
    move-object v3, v5

    move/from16 v20, v14

    move v5, v4

    .end local v5    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .end local v14    # "destCount":I
    .restart local v3    # "pos":Lcom/android/dx/rop/code/SourcePosition;
    .restart local v20    # "destCount":I
    iget-object v0, v7, Lcom/android/dx/cf/code/RopperMachine;->ropper:Lcom/android/dx/cf/code/Ropper;

    invoke-virtual {v0}, Lcom/android/dx/cf/code/Ropper;->getFirstTempStackReg()I

    move-result v0

    .line 347
    .local v0, "scratchAt":I
    new-array v4, v15, [Lcom/android/dx/rop/code/RegisterSpec;

    .line 349
    .local v4, "scratchRegs":[Lcom/android/dx/rop/code/RegisterSpec;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_11
    if-ge v6, v15, :cond_20

    .line 350
    invoke-virtual {v2, v6}, Lcom/android/dx/rop/code/RegisterSpecList;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v9

    .line 351
    .local v9, "src":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v10

    .line 352
    .local v10, "type":Lcom/android/dx/rop/type/TypeBearer;
    invoke-virtual {v9, v0}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v11

    .line 353
    .local v11, "scratch":Lcom/android/dx/rop/code/RegisterSpec;
    iget-object v12, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/dx/rop/code/PlainInsn;

    invoke-static {v10}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v14

    invoke-direct {v13, v14, v3, v11, v9}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    aput-object v11, v4, v6

    .line 355
    invoke-virtual {v9}, Lcom/android/dx/rop/code/RegisterSpec;->getCategory()I

    move-result v12

    add-int/2addr v0, v12

    .line 349
    .end local v9    # "src":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v10    # "type":Lcom/android/dx/rop/type/TypeBearer;
    .end local v11    # "scratch":Lcom/android/dx/rop/code/RegisterSpec;
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 358
    .end local v6    # "i":I
    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/dx/cf/code/RopperMachine;->getAuxInt()I

    move-result v6

    .local v6, "pattern":I
    :goto_12
    if-eqz v6, :cond_21

    .line 359
    and-int/lit8 v9, v6, 0xf

    sub-int/2addr v9, v5

    .line 360
    .local v9, "which":I
    aget-object v10, v4, v9

    .line 361
    .local v10, "scratch":Lcom/android/dx/rop/code/RegisterSpec;
    invoke-virtual {v10}, Lcom/android/dx/rop/code/RegisterSpec;->getTypeBearer()Lcom/android/dx/rop/type/TypeBearer;

    move-result-object v11

    .line 362
    .local v11, "type":Lcom/android/dx/rop/type/TypeBearer;
    iget-object v12, v7, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/dx/rop/code/PlainInsn;

    invoke-static {v11}, Lcom/android/dx/rop/code/Rops;->opMove(Lcom/android/dx/rop/type/TypeBearer;)Lcom/android/dx/rop/code/Rop;

    move-result-object v14

    .line 363
    invoke-virtual {v10, v8}, Lcom/android/dx/rop/code/RegisterSpec;->withReg(I)Lcom/android/dx/rop/code/RegisterSpec;

    move-result-object v5

    invoke-direct {v13, v14, v3, v5, v10}, Lcom/android/dx/rop/code/PlainInsn;-><init>(Lcom/android/dx/rop/code/Rop;Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpec;Lcom/android/dx/rop/code/RegisterSpec;)V

    .line 362
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-interface {v11}, Lcom/android/dx/rop/type/TypeBearer;->getType()Lcom/android/dx/rop/type/Type;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/dx/rop/type/Type;->getCategory()I

    move-result v5

    add-int/2addr v8, v5

    .line 358
    .end local v9    # "which":I
    .end local v10    # "scratch":Lcom/android/dx/rop/code/RegisterSpec;
    .end local v11    # "type":Lcom/android/dx/rop/type/TypeBearer;
    shr-int/lit8 v6, v6, 0x4

    const/4 v5, 0x1

    goto :goto_12

    .line 367
    .end local v6    # "pattern":I
    :cond_21
    return-void

    :pswitch_data_0
    .packed-switch 0x57
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public startBlock(Lcom/android/dx/rop/type/TypeList;)V
    .locals 1
    .param p1, "catches"    # Lcom/android/dx/rop/type/TypeList;

    .line 203
    iput-object p1, p0, Lcom/android/dx/cf/code/RopperMachine;->catches:Lcom/android/dx/rop/type/TypeList;

    .line 205
    iget-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->insns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    .line 207
    iput-boolean v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returns:Z

    .line 208
    iput v0, p0, Lcom/android/dx/cf/code/RopperMachine;->primarySuccessorIndex:I

    .line 209
    iput v0, p0, Lcom/android/dx/cf/code/RopperMachine;->extraBlockCount:I

    .line 210
    iput-boolean v0, p0, Lcom/android/dx/cf/code/RopperMachine;->blockCanThrow:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/dx/cf/code/RopperMachine;->hasJsr:Z

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/cf/code/RopperMachine;->returnAddress:Lcom/android/dx/cf/code/ReturnAddress;

    .line 213
    return-void
.end method

.method public wereCatchesUsed()Z
    .locals 1

    .line 222
    iget-boolean v0, p0, Lcom/android/dx/cf/code/RopperMachine;->catchesUsed:Z

    return v0
.end method
