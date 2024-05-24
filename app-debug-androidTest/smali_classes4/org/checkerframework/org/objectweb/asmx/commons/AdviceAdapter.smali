.class public abstract Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;
.super Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;
.source "AdviceAdapter.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/Opcodes;


# static fields
.field private static final OTHER:Ljava/lang/Object;

.field private static final THIS:Ljava/lang/Object;


# instance fields
.field private branches:Ljava/util/HashMap;

.field private constructor:Z

.field protected methodAccess:I

.field protected methodDesc:Ljava/lang/String;

.field private stackFrame:Ljava/util/ArrayList;

.field private superInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "mv"    # Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;
    .param p2, "access"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;-><init>(Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    .line 81
    iput p2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->methodAccess:I

    .line 82
    iput-object p4, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->methodDesc:Ljava/lang/String;

    .line 84
    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    .line 85
    if-nez v0, :cond_0

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->superInitialized:Z

    .line 87
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->onMethodEnter()V

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->stackFrame:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->branches:Ljava/util/HashMap;

    .line 92
    :goto_0
    return-void
.end method

.method private addBranch(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 571
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->branches:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 572
    return-void

    .line 574
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 575
    .local v0, "frame":Ljava/util/ArrayList;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->stackFrame:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 576
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->branches:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    return-void
.end method

.method private addBranches(Lorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 564
    invoke-direct {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->addBranch(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 565
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 566
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->addBranch(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 565
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private peekValue()Ljava/lang/Object;
    .locals 2

    .line 584
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->stackFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private popValue()Ljava/lang/Object;
    .locals 2

    .line 580
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->stackFrame:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pushValue(Ljava/lang/Object;)V
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 588
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->stackFrame:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    return-void
.end method


# virtual methods
.method protected abstract onMethodEnter()V
.end method

.method protected abstract onMethodExit(I)V
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 380
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_2

    .line 383
    const/4 v0, 0x0

    invoke-virtual {p4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 384
    .local v1, "c":C
    const/16 v2, 0x4a

    if-eq v1, v2, :cond_0

    const/16 v2, 0x44

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 385
    .local v0, "longOrDouble":Z
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 407
    :pswitch_0
    if-eqz v0, :cond_2

    .line 408
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 399
    :pswitch_1
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 400
    if-eqz v0, :cond_2

    .line 401
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 402
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    .line 393
    :pswitch_2
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 394
    if-eqz v0, :cond_2

    .line 395
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    .line 387
    :pswitch_3
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 388
    if-eqz v0, :cond_2

    .line 389
    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 412
    .end local v0    # "longOrDouble":Z
    .end local v1    # "c":C
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public visitInsn(I)V
    .locals 4
    .param p1, "opcode"    # I

    .line 107
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    .line 108
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 110
    :pswitch_1
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->onMethodExit(I)V

    .line 111
    goto/16 :goto_0

    .line 124
    :pswitch_2
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 125
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->onMethodExit(I)V

    .line 127
    goto/16 :goto_0

    .line 117
    :pswitch_3
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 118
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 119
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->onMethodExit(I)V

    .line 120
    goto/16 :goto_0

    .line 320
    :pswitch_4
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v0

    .line 321
    .local v0, "o1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v1

    .line 322
    .local v1, "o2":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 323
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 306
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    :pswitch_5
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v0

    .line 307
    .restart local v0    # "o1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v1

    .line 308
    .restart local v1    # "o2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v2

    .line 309
    .local v2, "o3":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v3

    .line 310
    .local v3, "o4":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 311
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0, v3}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 313
    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 314
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 315
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 317
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    .end local v2    # "o3":Ljava/lang/Object;
    .end local v3    # "o4":Ljava/lang/Object;
    goto/16 :goto_0

    .line 292
    :pswitch_6
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v0

    .line 293
    .restart local v0    # "o1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v1

    .line 294
    .restart local v1    # "o2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v2

    .line 295
    .restart local v2    # "o3":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 296
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 297
    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 298
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 299
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 301
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    .end local v2    # "o3":Ljava/lang/Object;
    goto/16 :goto_0

    .line 280
    :pswitch_7
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v0

    .line 281
    .restart local v0    # "o1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v1

    .line 282
    .restart local v1    # "o2":Ljava/lang/Object;
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 283
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 284
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 285
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 287
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    goto :goto_0

    .line 267
    :pswitch_8
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v0

    .line 268
    .restart local v0    # "o1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v1

    .line 269
    .restart local v1    # "o2":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v2

    .line 270
    .restart local v2    # "o3":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 271
    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 272
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 273
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 275
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    .end local v2    # "o3":Ljava/lang/Object;
    goto :goto_0

    .line 256
    :pswitch_9
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v0

    .line 257
    .restart local v0    # "o1":Ljava/lang/Object;
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v1

    .line 258
    .restart local v1    # "o2":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 259
    invoke-direct {p0, v1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 260
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 262
    .end local v0    # "o1":Ljava/lang/Object;
    .end local v1    # "o2":Ljava/lang/Object;
    goto :goto_0

    .line 250
    :pswitch_a
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->peekValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 251
    goto :goto_0

    .line 223
    :pswitch_b
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 224
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 225
    goto :goto_0

    .line 243
    :pswitch_c
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 244
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 245
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 246
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 247
    goto :goto_0

    .line 236
    :pswitch_d
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 237
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 238
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 239
    goto :goto_0

    .line 206
    :pswitch_e
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 207
    goto :goto_0

    .line 168
    :pswitch_f
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 169
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 170
    goto :goto_0

    .line 161
    :pswitch_10
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 162
    goto :goto_0

    .line 144
    :pswitch_11
    nop

    .line 325
    :goto_0
    goto :goto_1

    .line 328
    :cond_0
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 336
    :sswitch_0
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->onMethodExit(I)V

    .line 340
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitInsn(I)V

    .line 341
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
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
        :pswitch_e
        :pswitch_11
        :pswitch_e
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
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
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_e
        :pswitch_b
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_11
        :pswitch_e
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
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
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
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
        :pswitch_11
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xac -> :sswitch_0
        0xad -> :sswitch_0
        0xae -> :sswitch_0
        0xaf -> :sswitch_0
        0xb0 -> :sswitch_0
        0xb1 -> :sswitch_0
        0xbf -> :sswitch_0
    .end sparse-switch
.end method

.method public visitIntInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "operand"    # I

    .line 415
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitIntInsn(II)V

    .line 417
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    .line 418
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 421
    :pswitch_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 505
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitJumpInsn(ILorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 507
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    .line 508
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 533
    :sswitch_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 528
    :sswitch_1
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 529
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 530
    goto :goto_0

    .line 517
    :sswitch_2
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 518
    nop

    .line 536
    :goto_0
    invoke-direct {p0, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->addBranch(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 538
    :cond_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x99 -> :sswitch_2
        0x9a -> :sswitch_2
        0x9b -> :sswitch_2
        0x9c -> :sswitch_2
        0x9d -> :sswitch_2
        0x9e -> :sswitch_2
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_1
        0xa1 -> :sswitch_1
        0xa2 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa4 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xc6 -> :sswitch_2
        0xc7 -> :sswitch_2
    .end sparse-switch
.end method

.method public visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 2
    .param p1, "label"    # Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 95
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLabel(Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 97
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->branches:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 99
    .local v0, "frame":Ljava/util/ArrayList;
    if-eqz v0, :cond_0

    .line 100
    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->stackFrame:Ljava/util/ArrayList;

    .line 101
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->branches:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .end local v0    # "frame":Ljava/util/ArrayList;
    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2
    .param p1, "cst"    # Ljava/lang/Object;

    .line 427
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 429
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_1

    .line 430
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 431
    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 432
    :cond_0
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 435
    :cond_1
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "keys"    # [I
    .param p3, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 541
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitLookupSwitchInsn(Lorg/checkerframework/org/objectweb/asmx/Label;[I[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 543
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    .line 544
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 545
    invoke-direct {p0, p1, p3}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->addBranches(Lorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 547
    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "opcode"    # I
    .param p2, "owner"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "desc"    # Ljava/lang/String;

    .line 463
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_3

    .line 466
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v0

    .line 467
    .local v0, "types":[Lorg/checkerframework/org/objectweb/asmx/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v1, v2, :cond_1

    .line 468
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 469
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 470
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 467
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 483
    :pswitch_1
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object v1

    .line 484
    .local v1, "type":Ljava/lang/Object;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->superInitialized:Z

    if-nez v2, :cond_2

    .line 485
    invoke-virtual {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->onMethodEnter()V

    .line 486
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->superInitialized:Z

    .line 489
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    goto :goto_1

    .line 479
    .end local v1    # "type":Ljava/lang/Object;
    :pswitch_2
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 480
    nop

    .line 494
    :cond_2
    :goto_1
    invoke-static {p4}, Lorg/checkerframework/org/objectweb/asmx/Type;->getReturnType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v1

    .line 495
    .local v1, "returnType":Lorg/checkerframework/org/objectweb/asmx/Type;
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/Type;->VOID_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eq v1, v2, :cond_3

    .line 496
    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 497
    invoke-virtual {v1}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSize()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 498
    invoke-direct {p0, v2}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 502
    .end local v0    # "types":[Lorg/checkerframework/org/objectweb/asmx/Type;
    .end local v1    # "returnType":Lorg/checkerframework/org/objectweb/asmx/Type;
    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0xb6
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 1
    .param p1, "desc"    # Ljava/lang/String;
    .param p2, "dims"    # I

    .line 438
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 440
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_1

    .line 441
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 442
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 444
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 446
    :cond_1
    return-void
.end method

.method public visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "dflt"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p4, "labels"    # [Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 555
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTableSwitchInsn(IILorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 557
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    .line 558
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 559
    invoke-direct {p0, p3, p4}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->addBranches(Lorg/checkerframework/org/objectweb/asmx/Label;[Lorg/checkerframework/org/objectweb/asmx/Label;)V

    .line 561
    :cond_0
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 449
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->mv:Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;

    invoke-interface {v0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/MethodVisitor;->visitTypeInsn(ILjava/lang/String;)V

    .line 452
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xbb

    if-ne p1, v0, :cond_0

    .line 453
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 455
    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 1
    .param p1, "opcode"    # I
    .param p2, "var"    # I

    .line 344
    invoke-super {p0, p1, p2}, Lorg/checkerframework/org/objectweb/asmx/commons/GeneratorAdapter;->visitVarInsn(II)V

    .line 346
    iget-boolean v0, p0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->constructor:Z

    if-eqz v0, :cond_1

    .line 347
    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 367
    :sswitch_0
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 368
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_1

    .line 363
    :sswitch_1
    invoke-direct {p0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 364
    goto :goto_1

    .line 358
    :sswitch_2
    if-nez p2, :cond_0

    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->THIS:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 359
    goto :goto_1

    .line 354
    :sswitch_3
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 355
    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 356
    goto :goto_1

    .line 350
    :sswitch_4
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/checkerframework/org/objectweb/asmx/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 351
    nop

    .line 372
    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x36 -> :sswitch_1
        0x37 -> :sswitch_0
        0x38 -> :sswitch_1
        0x39 -> :sswitch_0
        0x3a -> :sswitch_1
    .end sparse-switch
.end method
