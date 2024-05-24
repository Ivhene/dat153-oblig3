.class public Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
.super Ljava/lang/Object;
.source "Frame.java"


# instance fields
.field private locals:I

.field private top:I

.field private values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "nLocals"    # I
    .param p2, "nStack"    # I

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    add-int v0, p1, p2

    new-array v0, v0, [Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 76
    iput p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    .line 77
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)V
    .locals 2
    .param p1, "src"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    .line 85
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    array-length v1, v1

    sub-int/2addr v1, v0

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;-><init>(II)V

    .line 86
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->init(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    .line 87
    return-void
.end method


# virtual methods
.method public clearStack()V
    .locals 1

    .line 169
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    .line 170
    return-void
.end method

.method public execute(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;)V
    .locals 6
    .param p1, "insn"    # Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;
    .param p2, "interpreter"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 206
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 604
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal opcode"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :pswitch_1
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 602
    goto/16 :goto_2

    .line 593
    :pswitch_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 594
    .local v0, "values":Ljava/util/List;
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;

    iget v2, v2, Lorg/checkerframework/org/objectweb/asmx/tree/MultiANewArrayInsnNode;->dims:I

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_0

    .line 595
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 594
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 597
    .end local v2    # "i":I
    :cond_0
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->naryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Ljava/util/List;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 598
    goto/16 :goto_2

    .line 590
    .end local v0    # "values":Ljava/util/List;
    :pswitch_3
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 591
    goto/16 :goto_2

    .line 586
    :pswitch_4
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 587
    goto/16 :goto_2

    .line 582
    :pswitch_5
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 583
    goto/16 :goto_2

    .line 579
    :pswitch_6
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 580
    goto/16 :goto_2

    .line 574
    :pswitch_7
    invoke-interface {p2, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 575
    goto/16 :goto_2

    .line 559
    :pswitch_8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .restart local v0    # "values":Ljava/util/List;
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;

    iget-object v2, v2, Lorg/checkerframework/org/objectweb/asmx/tree/MethodInsnNode;->desc:Ljava/lang/String;

    .line 561
    .local v2, "desc":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v3

    array-length v3, v3

    .local v3, "i":I
    :goto_1
    if-lez v3, :cond_1

    .line 562
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 561
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 564
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;->getOpcode()I

    move-result v3

    const/16 v4, 0xb8

    if-eq v3, v4, :cond_2

    .line 565
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 567
    :cond_2
    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    sget-object v3, Lorg/checkerframework/org/objectweb/asmx/Type;->VOID_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne v1, v3, :cond_3

    .line 568
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->naryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Ljava/util/List;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    goto/16 :goto_2

    .line 570
    :cond_3
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->naryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Ljava/util/List;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 572
    goto/16 :goto_2

    .line 551
    .end local v0    # "values":Ljava/util/List;
    .end local v2    # "desc":Ljava/lang/String;
    :pswitch_9
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 552
    .local v0, "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 553
    .local v1, "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {p2, p1, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 554
    goto/16 :goto_2

    .line 548
    .end local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_a
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 549
    goto/16 :goto_2

    .line 545
    :pswitch_b
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 546
    goto/16 :goto_2

    .line 542
    :pswitch_c
    invoke-interface {p2, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 543
    goto/16 :goto_2

    .line 540
    :pswitch_d
    goto/16 :goto_2

    .line 537
    :pswitch_e
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 538
    goto/16 :goto_2

    .line 529
    :pswitch_f
    goto/16 :goto_2

    .line 526
    :pswitch_10
    invoke-interface {p2, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 527
    goto/16 :goto_2

    .line 524
    :pswitch_11
    goto/16 :goto_2

    .line 519
    :pswitch_12
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 520
    .restart local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 521
    .restart local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {p2, p1, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 522
    goto/16 :goto_2

    .line 509
    .end local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_13
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 510
    goto/16 :goto_2

    .line 499
    :pswitch_14
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 500
    .restart local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 501
    .restart local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {p2, p1, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 502
    goto/16 :goto_2

    .line 492
    .end local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_15
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 493
    goto/16 :goto_2

    .line 474
    :pswitch_16
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/IincInsnNode;->var:I

    .line 475
    .local v0, "var":I
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->getLocal(I)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 476
    goto/16 :goto_2

    .line 469
    .end local v0    # "var":I
    :pswitch_17
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 470
    .local v0, "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 471
    .restart local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {p2, p1, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 472
    goto/16 :goto_2

    .line 455
    .end local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_18
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->unaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 456
    goto/16 :goto_2

    .line 447
    :pswitch_19
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 448
    .restart local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 449
    .restart local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {p2, p1, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 450
    goto/16 :goto_2

    .line 419
    .end local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_1a
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 420
    .restart local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 421
    .restart local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_4

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_4

    .line 424
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 425
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 426
    goto/16 :goto_2

    .line 422
    :cond_4
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "Illegal use of SWAP"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 374
    .end local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_1b
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 375
    .local v0, "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 376
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 377
    .local v1, "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_7

    .line 378
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    .line 379
    .local v2, "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v4

    if-ne v4, v3, :cond_5

    .line 380
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v4

    .line 381
    .local v4, "value4":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v5

    if-ne v5, v3, :cond_7

    .line 382
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 383
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 384
    invoke-interface {p2, p1, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 385
    invoke-interface {p2, p1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 386
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 387
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 388
    goto/16 :goto_2

    .line 391
    .end local v4    # "value4":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_5
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 392
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 393
    invoke-interface {p2, p1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 394
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 395
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 396
    goto/16 :goto_2

    .line 400
    .end local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_6
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 401
    .restart local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 402
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    .line 403
    .restart local v2    # "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 404
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 405
    invoke-interface {p2, p1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 406
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 407
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 408
    goto/16 :goto_2

    .line 417
    .end local v2    # "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_7
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "Illegal use of DUP2_X2"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 411
    :cond_8
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 412
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 413
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 414
    goto/16 :goto_2

    .line 349
    .end local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_1c
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 350
    .restart local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v3, :cond_9

    .line 351
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 352
    .restart local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_a

    .line 353
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    .line 354
    .restart local v2    # "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v4

    if-ne v4, v3, :cond_a

    .line 355
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 356
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 357
    invoke-interface {p2, p1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 358
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 359
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 360
    goto/16 :goto_2

    .line 364
    .end local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_9
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 365
    .restart local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_a

    .line 366
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 367
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 368
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 369
    goto/16 :goto_2

    .line 372
    :cond_a
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "Illegal use of DUP2_X1"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 332
    .end local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_1d
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 333
    .restart local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v3, :cond_c

    .line 334
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 335
    .restart local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 336
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 337
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 338
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 339
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 340
    goto/16 :goto_2

    .line 347
    :cond_b
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "Illegal use of DUP2"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    .end local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_c
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 344
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 345
    goto/16 :goto_2

    .line 311
    .end local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_1e
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 312
    .restart local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v3, :cond_e

    .line 313
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 314
    .restart local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_d

    .line 315
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    .line 316
    .restart local v2    # "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v4

    if-ne v4, v3, :cond_e

    .line 317
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 318
    invoke-interface {p2, p1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 319
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 320
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 321
    goto/16 :goto_2

    .line 324
    .end local v2    # "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_d
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 325
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 326
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 327
    goto/16 :goto_2

    .line 330
    .end local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_e
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v2, "Illegal use of DUP_X2"

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    .end local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_1f
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 302
    .restart local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 303
    .restart local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_f

    invoke-interface {v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_f

    .line 306
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 307
    invoke-interface {p2, p1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 308
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 309
    goto/16 :goto_2

    .line 304
    :cond_f
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v3, "Illegal use of DUP_X1"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 293
    .end local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_20
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 294
    .restart local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v1

    if-ne v1, v3, :cond_10

    .line 297
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 298
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 299
    goto/16 :goto_2

    .line 295
    :cond_10
    new-instance v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v2, "Illegal use of DUP"

    invoke-direct {v1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_21
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_15

    .line 287
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v0

    if-ne v0, v3, :cond_11

    goto/16 :goto_2

    .line 288
    :cond_11
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of POP2"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :pswitch_22
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v0

    if-eq v0, v2, :cond_12

    goto/16 :goto_2

    .line 282
    :cond_12
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "Illegal use of POP"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :pswitch_23
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 276
    .local v0, "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 277
    .restart local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    .line 278
    .local v2, "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {p2, p1, v2, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->ternaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 279
    goto :goto_2

    .line 254
    .end local v0    # "value3":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v2    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_24
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 255
    .local v0, "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;

    iget v1, v1, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;->var:I

    .line 256
    .local v1, "var":I
    invoke-virtual {p0, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 257
    invoke-interface {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v3

    const/4 v4, 0x0

    if-ne v3, v2, :cond_13

    .line 258
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p2, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v5

    invoke-virtual {p0, v3, v5}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 260
    :cond_13
    if-lez v1, :cond_15

    .line 261
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->getLocal(I)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v3

    .line 262
    .local v3, "local":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    if-eqz v3, :cond_14

    invoke-interface {v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;->getSize()I

    move-result v5

    if-ne v5, v2, :cond_14

    .line 263
    add-int/lit8 v2, v1, 0x1

    invoke-interface {p2, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newValue(Lorg/checkerframework/org/objectweb/asmx/Type;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 265
    .end local v3    # "local":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_14
    goto :goto_2

    .line 245
    .end local v0    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "var":I
    :pswitch_25
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 246
    .local v0, "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v1

    .line 247
    .local v1, "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    invoke-interface {p2, p1, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->binaryOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 248
    goto :goto_2

    .line 234
    .end local v0    # "value2":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .end local v1    # "value1":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :pswitch_26
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;

    iget v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/VarInsnNode;->var:I

    .line 235
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->getLocal(I)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    .line 234
    invoke-interface {p2, p1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->copyOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 236
    goto :goto_2

    .line 227
    :pswitch_27
    invoke-interface {p2, p1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->newOperation(Lorg/checkerframework/org/objectweb/asmx/tree/AbstractInsnNode;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V

    .line 228
    goto :goto_2

    .line 208
    :pswitch_28
    nop

    .line 606
    :cond_15
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_28
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_27
        :pswitch_0
        :pswitch_0
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_26
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_23
        :pswitch_23
        :pswitch_23
        :pswitch_23
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
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getLocal(I)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 118
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    if-ge p1, v0, :cond_0

    .line 121
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aget-object v0, v0, p1

    return-object v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Trying to access an inexistant local variable"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLocals()I
    .locals 1

    .line 107
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    return v0
.end method

.method public getStack(I)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 2
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 159
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    if-ge p1, v0, :cond_0

    .line 162
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    return-object v0

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Trying to access an inexistant stack element"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStackSize()I
    .locals 1

    .line 147
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    return v0
.end method

.method public init(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .locals 4
    .param p1, "src"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;

    .line 96
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 97
    iget v0, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    .line 98
    return-object p0
.end method

.method public merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;)Z
    .locals 5
    .param p1, "frame"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .param p2, "interpreter"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 620
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    iget v1, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    if-ne v0, v1, :cond_2

    .line 623
    const/4 v0, 0x0

    .line 624
    .local v0, "changes":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    iget v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    .line 625
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aget-object v3, v3, v1

    invoke-interface {p2, v2, v3}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Interpreter;->merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    move-result-object v2

    .line 626
    .local v2, "v":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aget-object v4, v3, v1

    if-eq v2, v4, :cond_0

    .line 627
    aput-object v2, v3, v1

    .line 628
    or-int/lit8 v0, v0, 0x1

    .line 624
    .end local v2    # "v":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    .end local v1    # "i":I
    :cond_1
    return v0

    .line 621
    .end local v0    # "changes":Z
    :cond_2
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "Incompatible stack heights"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;[Z)Z
    .locals 4
    .param p1, "frame"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;
    .param p2, "access"    # [Z

    .line 644
    const/4 v0, 0x0

    .line 645
    .local v0, "changes":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    if-ge v1, v2, :cond_1

    .line 646
    aget-boolean v2, p2, v1

    if-nez v2, :cond_0

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aget-object v2, v2, v1

    iget-object v3, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    iget-object v3, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aget-object v3, v3, v1

    aput-object v3, v2, v1

    .line 648
    const/4 v0, 0x1

    .line 645
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public pop()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 179
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    if-eqz v0, :cond_0

    .line 182
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    add-int/2addr v0, v2

    aget-object v0, v1, v0

    return-object v0

    .line 180
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Cannot pop operand off an empty stack."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public push(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V
    .locals 5
    .param p1, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 192
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    iget v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    add-int v2, v0, v1

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 195
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    add-int/2addr v0, v1

    aput-object p1, v3, v0

    .line 196
    return-void

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Insufficient maximum stack size."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocal(ILorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "value"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation

    .line 134
    iget v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    if-ge p1, v0, :cond_0

    .line 137
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aput-object p2, v0, p1

    .line 138
    return-void

    .line 135
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Trying to access an inexistant local variable"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 660
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 661
    .local v0, "b":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    const/16 v3, 0x20

    if-ge v1, v2, :cond_0

    .line 662
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 661
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 664
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 665
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->top:I

    if-ge v1, v2, :cond_1

    .line 666
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->values:[Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    iget v4, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Frame;->locals:I

    add-int/2addr v4, v1

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 668
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
