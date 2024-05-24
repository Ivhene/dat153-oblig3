.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;
.super Ljava/lang/Object;
.source "Subroutines.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;,
        Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;
    }
.end annotation


# instance fields
.field public final TOPLEVEL:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

.field private final subroutines:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;)V
    .locals 1
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    .line 386
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;-><init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Z)V

    .line 387
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/MethodGen;Z)V
    .locals 16
    .param p1, "mg"    # Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    .param p2, "enableJustIceCheck"    # Z

    .line 396
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 367
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutines:Ljava/util/Map;

    .line 397
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getInstructionList()Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getInstructionHandles()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    .line 398
    .local v1, "all":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getExceptionHandlers()[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;

    move-result-object v2

    .line 401
    .local v2, "handlers":[Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    new-instance v3, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    invoke-direct {v3, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;)V

    iput-object v3, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->TOPLEVEL:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    .line 404
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 405
    .local v3, "sub_leaders":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    aget-object v7, v1, v6

    .line 406
    .local v7, "element":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    .line 407
    .local v8, "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v9, v8, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v9, :cond_0

    .line 408
    move-object v9, v8

    check-cast v9, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v7    # "element":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v8    # "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 413
    :cond_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 414
    .local v6, "astore":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    new-instance v7, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    invoke-direct {v7, v0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;)V

    .line 415
    .local v7, "sr":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;
    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    move-object v9, v8

    check-cast v9, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;->getIndex()I

    move-result v8

    invoke-virtual {v7, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->setLocalVariable(I)V

    .line 416
    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutines:Ljava/util/Map;

    invoke-interface {v8, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    .end local v6    # "astore":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v7    # "sr":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;
    goto :goto_1

    .line 420
    :cond_2
    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutines:Ljava/util/Map;

    aget-object v6, v1, v5

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->TOPLEVEL:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    aget-object v4, v1, v5

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 428
    array-length v4, v1

    move v6, v5

    :goto_2
    if-ge v6, v4, :cond_4

    aget-object v7, v1, v6

    .line 429
    .local v7, "element":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v8

    .line 430
    .restart local v8    # "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v9, v8, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v9, :cond_3

    .line 431
    move-object v9, v8

    check-cast v9, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    .line 432
    .local v9, "leader":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v0, v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getSubroutine(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    invoke-virtual {v10, v7}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->addEnteringJsrInstruction(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 428
    .end local v7    # "element":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v8    # "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .end local v9    # "leader":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 439
    :cond_4
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 442
    .local v4, "instructions_assigned":Ljava/util/Set;, "Ljava/util/Set<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 444
    .local v6, "colors":Ljava/util/Map;, "Ljava/util/Map<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v7, "Q":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 448
    .local v9, "actual":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v10, v1

    move v11, v5

    :goto_4
    if-ge v11, v10, :cond_5

    aget-object v12, v1, v11

    .line 449
    .local v12, "element":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    sget-object v13, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->WHITE:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    invoke-interface {v6, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .end local v12    # "element":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 451
    :cond_5
    sget-object v10, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->GRAY:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    invoke-interface {v6, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 455
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    aget-object v10, v1, v5

    if-ne v9, v10, :cond_6

    .line 464
    array-length v10, v2

    move v11, v5

    :goto_5
    if-ge v11, v10, :cond_6

    aget-object v12, v2, v11

    .line 465
    .local v12, "handler":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v13

    sget-object v14, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->GRAY:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    invoke-interface {v6, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getHandlerPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v13

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .end local v12    # "handler":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 472
    :cond_6
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-eqz v10, :cond_9

    .line 473
    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 474
    .local v10, "u":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-static {v10}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getSuccessors(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v11

    .line 475
    .local v11, "successors":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v12, v11

    move v13, v5

    :goto_7
    if-ge v13, v12, :cond_8

    aget-object v14, v11, v13

    .line 476
    .local v14, "successor":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-interface {v6, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    sget-object v5, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->WHITE:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    if-ne v15, v5, :cond_7

    .line 477
    sget-object v5, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->GRAY:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    invoke-interface {v6, v14, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-interface {v7, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 475
    .end local v14    # "successor":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_7
    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x0

    goto :goto_7

    .line 481
    :cond_8
    sget-object v5, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->BLACK:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    invoke-interface {v6, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    .end local v10    # "u":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v11    # "successors":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v5, 0x0

    goto :goto_6

    .line 484
    :cond_9
    array-length v5, v1

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v5, :cond_d

    aget-object v11, v1, v10

    .line 485
    .local v11, "element":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    sget-object v13, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;->BLACK:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$ColourConstants;

    if-ne v12, v13, :cond_c

    .line 486
    const/4 v12, 0x0

    aget-object v13, v1, v12

    if-ne v9, v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getTopLevel()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v12

    goto :goto_9

    :cond_a
    invoke-virtual {v0, v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getSubroutine(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v12

    :goto_9
    check-cast v12, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    move-object v13, v12

    check-cast v13, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    invoke-virtual {v12, v11}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->addInstruction(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)V

    .line 487
    invoke-interface {v4, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_b

    .line 491
    invoke-interface {v4, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 488
    :cond_b
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Instruction \'"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "\' is part of more than one subroutine (or of the top level and a subroutine)."

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 484
    .end local v11    # "element":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_c
    :goto_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 494
    :cond_d
    const/4 v5, 0x0

    aget-object v10, v1, v5

    if-eq v9, v10, :cond_e

    .line 495
    invoke-virtual {v0, v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getSubroutine(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->setLeavingRET()V

    .line 497
    .end local v9    # "actual":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 499
    :cond_f
    if-eqz p2, :cond_14

    .line 502
    array-length v5, v2

    const/4 v12, 0x0

    :goto_b
    if-ge v12, v5, :cond_14

    aget-object v8, v2, v12

    .line 503
    .local v8, "handler":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getStartPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    .line 504
    .local v9, "_protected":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_c
    invoke-virtual {v8}, Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;->getEndPC()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v10

    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v10

    if-eq v9, v10, :cond_13

    .line 506
    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutines:Ljava/util/Map;

    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_12

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    .line 507
    .local v11, "sub":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    iget-object v13, v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutines:Ljava/util/Map;

    const/4 v14, 0x0

    aget-object v15, v1, v14

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    if-eq v11, v13, :cond_11

    .line 508
    invoke-interface {v11, v9}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;->contains(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z

    move-result v13

    if-nez v13, :cond_10

    goto :goto_e

    .line 509
    :cond_10
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Subroutine instruction \'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\' is protected by an exception handler, \'"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\'. This is forbidden by the JustIce verifier due to its clear definition of subroutines."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 514
    .end local v11    # "sub":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    :cond_11
    :goto_e
    goto :goto_d

    .line 515
    :cond_12
    const/4 v14, 0x0

    invoke-virtual {v9}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v9

    goto :goto_c

    .line 504
    :cond_13
    const/4 v14, 0x0

    .line 502
    .end local v8    # "handler":Lorg/checkerframework/org/apache/bcel/generic/CodeExceptionGen;
    .end local v9    # "_protected":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 526
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->getTopLevel()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v5

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    invoke-direct {v0, v5, v8}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->noRecursiveCalls(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;Ljava/util/Set;)V

    .line 528
    return-void
.end method

.method private static getSuccessors(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 8
    .param p0, "instruction"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 627
    const/4 v0, 0x0

    new-array v1, v0, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 628
    .local v1, "empty":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    const/4 v2, 0x1

    new-array v3, v2, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 630
    .local v3, "single":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    .line 632
    .local v4, "inst":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v5, :cond_0

    .line 633
    return-object v1

    .line 637
    :cond_0
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    if-eqz v5, :cond_1

    .line 638
    return-object v1

    .line 643
    :cond_1
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/ATHROW;

    if-eqz v5, :cond_2

    .line 644
    return-object v1

    .line 648
    :cond_2
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v5, :cond_3

    .line 649
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    aput-object v2, v3, v0

    .line 650
    return-object v3

    .line 653
    :cond_3
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;

    if-eqz v5, :cond_4

    .line 654
    move-object v2, v4

    check-cast v2, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    aput-object v2, v3, v0

    .line 655
    return-object v3

    .line 658
    :cond_4
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    if-eqz v5, :cond_6

    .line 659
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/generic/Select;

    if-eqz v5, :cond_5

    .line 662
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTargets()[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    .line 663
    .local v5, "matchTargets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    array-length v6, v5

    add-int/2addr v6, v2

    new-array v6, v6, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 664
    .local v6, "ret":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    move-object v7, v4

    check-cast v7, Lorg/checkerframework/org/apache/bcel/generic/Select;

    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/generic/Select;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v7

    aput-object v7, v6, v0

    .line 665
    array-length v7, v5

    invoke-static {v5, v0, v6, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 666
    return-object v6

    .line 668
    .end local v5    # "matchTargets":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v6    # "ret":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_5
    const/4 v5, 0x2

    new-array v5, v5, [Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 669
    .local v5, "pair":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    aput-object v6, v5, v0

    .line 670
    move-object v0, v4

    check-cast v0, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/BranchInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    aput-object v0, v5, v2

    .line 671
    return-object v5

    .line 675
    .end local v5    # "pair":[Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_6
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    aput-object v2, v3, v0

    .line 676
    return-object v3
.end method

.method private noRecursiveCalls(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;Ljava/util/Set;)V
    .locals 7
    .param p1, "sub"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 542
    .local p2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;->subSubs()[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    move-result-object v0

    .line 544
    .local v0, "subs":[Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 545
    .local v3, "sub2":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    invoke-interface {v3}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;->getLeavingRET()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/RET;

    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/generic/RET;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/RET;->getIndex()I

    move-result v4

    .line 547
    .local v4, "index":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    invoke-direct {p0, v3, p2}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->noRecursiveCalls(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;Ljava/util/Set;)V

    .line 558
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 544
    .end local v3    # "sub2":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .end local v4    # "index":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 549
    .restart local v3    # "sub2":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .restart local v4    # "index":I
    :cond_0
    move-object v1, v3

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;

    .line 550
    .local v1, "si":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Subroutine with local variable \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->access$000(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', JSRs \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 551
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->access$100(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;)Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\', RET \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;->access$200(Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is called by a subroutine which uses the same local variable index as itself; maybe even a recursive call? JustIce\'s clean definition of a subroutine forbids both."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StructuralCodeConstraintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    .end local v1    # "si":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines$SubroutineImpl;
    .end local v3    # "sub2":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .end local v4    # "index":I
    :cond_1
    return-void
.end method


# virtual methods
.method public getSubroutine(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .locals 3
    .param p1, "leader"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 571
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutines:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    .line 573
    .local v0, "ret":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    if-eqz v0, :cond_1

    .line 578
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->TOPLEVEL:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    if-eq v0, v1, :cond_0

    .line 582
    return-object v0

    .line 579
    :cond_0
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v2, "TOPLEVEL special subroutine requested; use getTopLevel()."

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 574
    :cond_1
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    const-string v2, "Subroutine requested for an InstructionHandle that is not a leader of a subroutine."

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getTopLevel()Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .locals 1

    .line 618
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->TOPLEVEL:Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    return-object v0
.end method

.method public subroutineOf(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    .locals 3
    .param p1, "any"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 597
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutines:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;

    .line 598
    .local v1, "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    invoke-interface {v1, p1}, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;->contains(Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    return-object v1

    .line 601
    .end local v1    # "s":Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutine;
    :cond_0
    goto :goto_0

    .line 602
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEBUG: Please verify \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' lies in dead code."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 603
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 684
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/Subroutines;->subroutines:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n---\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
