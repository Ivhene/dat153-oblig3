.class public abstract Lorg/checkerframework/org/apache/bcel/generic/Instruction;
.super Ljava/lang/Object;
.source "Instruction.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static cmp:Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;


# instance fields
.field protected length:S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected opcode:S
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;->DEFAULT:Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->cmp:Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->length:S

    .line 45
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    .line 56
    return-void
.end method

.method public constructor <init>(SS)V
    .locals 1
    .param p1, "opcode"    # S
    .param p2, "length"    # S

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x1

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->length:S

    .line 45
    const/4 v0, -0x1

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    .line 60
    iput-short p2, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->length:S

    .line 61
    iput-short p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    .line 62
    return-void
.end method

.method public static getComparator()Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 563
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->cmp:Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;

    return-object v0
.end method

.method public static isValidByte(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 600
    const/16 v0, -0x80

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isValidShort(I)Z
    .locals 1
    .param p0, "value"    # I

    .line 610
    const/16 v0, -0x8000

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7fff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static readInstruction(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;)Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 8
    .param p0, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "wide":Z
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v1

    int-to-short v1, v1

    .line 165
    .local v1, "opcode":S
    const/4 v2, 0x0

    .line 166
    .local v2, "obj":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    const/16 v3, 0xc4

    if-ne v1, v3, :cond_0

    .line 167
    const/4 v0, 0x1

    .line 168
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/util/ByteSequence;->readUnsignedByte()I

    move-result v3

    int-to-short v1, v3

    .line 170
    :cond_0
    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->getInstruction(I)Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    .line 171
    .local v3, "instruction":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    if-eqz v3, :cond_1

    .line 172
    return-object v3

    .line 175
    :cond_1
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v1, :sswitch_data_0

    .line 468
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal opcode detected: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 465
    :sswitch_0
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IMPDEP2;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IMPDEP2;-><init>()V

    move-object v2, v4

    .line 466
    goto/16 :goto_0

    .line 462
    :sswitch_1
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IMPDEP1;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IMPDEP1;-><init>()V

    move-object v2, v4

    .line 463
    goto/16 :goto_0

    .line 459
    :sswitch_2
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/BREAKPOINT;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/BREAKPOINT;-><init>()V

    move-object v2, v4

    .line 460
    goto/16 :goto_0

    .line 456
    :sswitch_3
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/JSR_W;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/JSR_W;-><init>()V

    move-object v2, v4

    .line 457
    goto/16 :goto_0

    .line 453
    :sswitch_4
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/GOTO_W;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/GOTO_W;-><init>()V

    move-object v2, v4

    .line 454
    goto/16 :goto_0

    .line 450
    :sswitch_5
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IFNONNULL;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IFNONNULL;-><init>()V

    move-object v2, v4

    .line 451
    goto/16 :goto_0

    .line 447
    :sswitch_6
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IFNULL;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IFNULL;-><init>()V

    move-object v2, v4

    .line 448
    goto/16 :goto_0

    .line 444
    :sswitch_7
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/MULTIANEWARRAY;-><init>()V

    move-object v2, v4

    .line 445
    goto/16 :goto_0

    .line 441
    :sswitch_8
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/INSTANCEOF;-><init>()V

    move-object v2, v4

    .line 442
    goto/16 :goto_0

    .line 438
    :sswitch_9
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/CHECKCAST;-><init>()V

    move-object v2, v4

    .line 439
    goto/16 :goto_0

    .line 435
    :sswitch_a
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/ANEWARRAY;-><init>()V

    move-object v2, v4

    .line 436
    goto/16 :goto_0

    .line 432
    :sswitch_b
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/NEWARRAY;-><init>()V

    move-object v2, v4

    .line 433
    goto/16 :goto_0

    .line 429
    :sswitch_c
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/NEW;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/NEW;-><init>()V

    move-object v2, v4

    .line 430
    goto/16 :goto_0

    .line 426
    :sswitch_d
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEDYNAMIC;-><init>()V

    move-object v2, v4

    .line 427
    goto/16 :goto_0

    .line 423
    :sswitch_e
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEINTERFACE;-><init>()V

    move-object v2, v4

    .line 424
    goto/16 :goto_0

    .line 420
    :sswitch_f
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESTATIC;-><init>()V

    move-object v2, v4

    .line 421
    goto/16 :goto_0

    .line 417
    :sswitch_10
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;-><init>()V

    move-object v2, v4

    .line 418
    goto/16 :goto_0

    .line 414
    :sswitch_11
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/INVOKEVIRTUAL;-><init>()V

    move-object v2, v4

    .line 415
    goto/16 :goto_0

    .line 411
    :sswitch_12
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/PUTFIELD;-><init>()V

    move-object v2, v4

    .line 412
    goto/16 :goto_0

    .line 408
    :sswitch_13
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/GETFIELD;-><init>()V

    move-object v2, v4

    .line 409
    goto/16 :goto_0

    .line 405
    :sswitch_14
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/PUTSTATIC;-><init>()V

    move-object v2, v4

    .line 406
    goto/16 :goto_0

    .line 402
    :sswitch_15
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/GETSTATIC;-><init>()V

    move-object v2, v4

    .line 403
    goto/16 :goto_0

    .line 399
    :sswitch_16
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/LOOKUPSWITCH;-><init>()V

    move-object v2, v4

    .line 400
    goto/16 :goto_0

    .line 396
    :sswitch_17
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/TABLESWITCH;-><init>()V

    move-object v2, v4

    .line 397
    goto/16 :goto_0

    .line 393
    :sswitch_18
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/RET;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/RET;-><init>()V

    move-object v2, v4

    .line 394
    goto/16 :goto_0

    .line 390
    :sswitch_19
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/JSR;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/JSR;-><init>()V

    move-object v2, v4

    .line 391
    goto/16 :goto_0

    .line 387
    :sswitch_1a
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/GOTO;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/GOTO;-><init>()V

    move-object v2, v4

    .line 388
    goto/16 :goto_0

    .line 384
    :sswitch_1b
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPNE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPNE;-><init>()V

    move-object v2, v4

    .line 385
    goto/16 :goto_0

    .line 381
    :sswitch_1c
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPEQ;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IF_ACMPEQ;-><init>()V

    move-object v2, v4

    .line 382
    goto/16 :goto_0

    .line 378
    :sswitch_1d
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLE;-><init>()V

    move-object v2, v4

    .line 379
    goto/16 :goto_0

    .line 375
    :sswitch_1e
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGT;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGT;-><init>()V

    move-object v2, v4

    .line 376
    goto/16 :goto_0

    .line 372
    :sswitch_1f
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPGE;-><init>()V

    move-object v2, v4

    .line 373
    goto/16 :goto_0

    .line 369
    :sswitch_20
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPLT;-><init>()V

    move-object v2, v4

    .line 370
    goto/16 :goto_0

    .line 366
    :sswitch_21
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPNE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPNE;-><init>()V

    move-object v2, v4

    .line 367
    goto/16 :goto_0

    .line 363
    :sswitch_22
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPEQ;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IF_ICMPEQ;-><init>()V

    move-object v2, v4

    .line 364
    goto/16 :goto_0

    .line 360
    :sswitch_23
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IFLE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IFLE;-><init>()V

    move-object v2, v4

    .line 361
    goto/16 :goto_0

    .line 357
    :sswitch_24
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IFGT;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IFGT;-><init>()V

    move-object v2, v4

    .line 358
    goto/16 :goto_0

    .line 354
    :sswitch_25
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IFGE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IFGE;-><init>()V

    move-object v2, v4

    .line 355
    goto/16 :goto_0

    .line 351
    :sswitch_26
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IFLT;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IFLT;-><init>()V

    move-object v2, v4

    .line 352
    goto/16 :goto_0

    .line 348
    :sswitch_27
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IFNE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IFNE;-><init>()V

    move-object v2, v4

    .line 349
    goto/16 :goto_0

    .line 345
    :sswitch_28
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IFEQ;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IFEQ;-><init>()V

    move-object v2, v4

    .line 346
    goto/16 :goto_0

    .line 342
    :sswitch_29
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/IINC;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/IINC;-><init>()V

    move-object v2, v4

    .line 343
    goto/16 :goto_0

    .line 339
    :sswitch_2a
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;-><init>(I)V

    move-object v2, v5

    .line 340
    goto/16 :goto_0

    .line 336
    :sswitch_2b
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;-><init>(I)V

    move-object v2, v4

    .line 337
    goto/16 :goto_0

    .line 333
    :sswitch_2c
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;-><init>(I)V

    move-object v2, v4

    .line 334
    goto/16 :goto_0

    .line 330
    :sswitch_2d
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;-><init>(I)V

    move-object v2, v4

    .line 331
    goto/16 :goto_0

    .line 327
    :sswitch_2e
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;-><init>(I)V

    move-object v2, v5

    .line 328
    goto/16 :goto_0

    .line 324
    :sswitch_2f
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;-><init>(I)V

    move-object v2, v4

    .line 325
    goto/16 :goto_0

    .line 321
    :sswitch_30
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;-><init>(I)V

    move-object v2, v4

    .line 322
    goto/16 :goto_0

    .line 318
    :sswitch_31
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;-><init>(I)V

    move-object v2, v4

    .line 319
    goto/16 :goto_0

    .line 315
    :sswitch_32
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;-><init>(I)V

    move-object v2, v5

    .line 316
    goto/16 :goto_0

    .line 312
    :sswitch_33
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;-><init>(I)V

    move-object v2, v4

    .line 313
    goto/16 :goto_0

    .line 309
    :sswitch_34
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;-><init>(I)V

    move-object v2, v4

    .line 310
    goto/16 :goto_0

    .line 306
    :sswitch_35
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;-><init>(I)V

    move-object v2, v4

    .line 307
    goto/16 :goto_0

    .line 303
    :sswitch_36
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;-><init>(I)V

    move-object v2, v5

    .line 304
    goto/16 :goto_0

    .line 300
    :sswitch_37
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;-><init>(I)V

    move-object v2, v4

    .line 301
    goto/16 :goto_0

    .line 297
    :sswitch_38
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;-><init>(I)V

    move-object v2, v4

    .line 298
    goto/16 :goto_0

    .line 294
    :sswitch_39
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;-><init>(I)V

    move-object v2, v4

    .line 295
    goto/16 :goto_0

    .line 291
    :sswitch_3a
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;-><init>(I)V

    move-object v2, v5

    .line 292
    goto/16 :goto_0

    .line 288
    :sswitch_3b
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;-><init>(I)V

    move-object v2, v4

    .line 289
    goto/16 :goto_0

    .line 285
    :sswitch_3c
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;-><init>(I)V

    move-object v2, v4

    .line 286
    goto/16 :goto_0

    .line 282
    :sswitch_3d
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;-><init>(I)V

    move-object v2, v4

    .line 283
    goto/16 :goto_0

    .line 279
    :sswitch_3e
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;-><init>()V

    move-object v2, v4

    .line 280
    goto/16 :goto_0

    .line 276
    :sswitch_3f
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/DSTORE;-><init>()V

    move-object v2, v4

    .line 277
    goto/16 :goto_0

    .line 273
    :sswitch_40
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/FSTORE;-><init>()V

    move-object v2, v4

    .line 274
    goto/16 :goto_0

    .line 270
    :sswitch_41
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/LSTORE;-><init>()V

    move-object v2, v4

    .line 271
    goto/16 :goto_0

    .line 267
    :sswitch_42
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/ISTORE;-><init>()V

    move-object v2, v4

    .line 268
    goto/16 :goto_0

    .line 264
    :sswitch_43
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;-><init>(I)V

    move-object v2, v5

    .line 265
    goto/16 :goto_0

    .line 261
    :sswitch_44
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;-><init>(I)V

    move-object v2, v4

    .line 262
    goto/16 :goto_0

    .line 258
    :sswitch_45
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;-><init>(I)V

    move-object v2, v4

    .line 259
    goto/16 :goto_0

    .line 255
    :sswitch_46
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;-><init>(I)V

    move-object v2, v4

    .line 256
    goto/16 :goto_0

    .line 252
    :sswitch_47
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;-><init>(I)V

    move-object v2, v5

    .line 253
    goto/16 :goto_0

    .line 249
    :sswitch_48
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;-><init>(I)V

    move-object v2, v4

    .line 250
    goto/16 :goto_0

    .line 246
    :sswitch_49
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;-><init>(I)V

    move-object v2, v4

    .line 247
    goto/16 :goto_0

    .line 243
    :sswitch_4a
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;-><init>(I)V

    move-object v2, v4

    .line 244
    goto/16 :goto_0

    .line 240
    :sswitch_4b
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;-><init>(I)V

    move-object v2, v5

    .line 241
    goto/16 :goto_0

    .line 237
    :sswitch_4c
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;-><init>(I)V

    move-object v2, v4

    .line 238
    goto/16 :goto_0

    .line 234
    :sswitch_4d
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;-><init>(I)V

    move-object v2, v4

    .line 235
    goto/16 :goto_0

    .line 231
    :sswitch_4e
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;-><init>(I)V

    move-object v2, v4

    .line 232
    goto/16 :goto_0

    .line 228
    :sswitch_4f
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;-><init>(I)V

    move-object v2, v5

    .line 229
    goto/16 :goto_0

    .line 225
    :sswitch_50
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;-><init>(I)V

    move-object v2, v4

    .line 226
    goto/16 :goto_0

    .line 222
    :sswitch_51
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;-><init>(I)V

    move-object v2, v4

    .line 223
    goto/16 :goto_0

    .line 219
    :sswitch_52
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;-><init>(I)V

    move-object v2, v4

    .line 220
    goto/16 :goto_0

    .line 216
    :sswitch_53
    new-instance v5, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    invoke-direct {v5, v4}, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;-><init>(I)V

    move-object v2, v5

    .line 217
    goto/16 :goto_0

    .line 213
    :sswitch_54
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;-><init>(I)V

    move-object v2, v4

    .line 214
    goto/16 :goto_0

    .line 210
    :sswitch_55
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;-><init>(I)V

    move-object v2, v4

    .line 211
    goto :goto_0

    .line 207
    :sswitch_56
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    invoke-direct {v4, v7}, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;-><init>(I)V

    move-object v2, v4

    .line 208
    goto :goto_0

    .line 204
    :sswitch_57
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/ALOAD;-><init>()V

    move-object v2, v4

    .line 205
    goto :goto_0

    .line 201
    :sswitch_58
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/DLOAD;-><init>()V

    move-object v2, v4

    .line 202
    goto :goto_0

    .line 198
    :sswitch_59
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/FLOAD;-><init>()V

    move-object v2, v4

    .line 199
    goto :goto_0

    .line 195
    :sswitch_5a
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/LLOAD;-><init>()V

    move-object v2, v4

    .line 196
    goto :goto_0

    .line 192
    :sswitch_5b
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/ILOAD;-><init>()V

    move-object v2, v4

    .line 193
    goto :goto_0

    .line 189
    :sswitch_5c
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/LDC2_W;-><init>()V

    move-object v2, v4

    .line 190
    goto :goto_0

    .line 186
    :sswitch_5d
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LDC_W;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/LDC_W;-><init>()V

    move-object v2, v4

    .line 187
    goto :goto_0

    .line 183
    :sswitch_5e
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/LDC;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/LDC;-><init>()V

    move-object v2, v4

    .line 184
    goto :goto_0

    .line 180
    :sswitch_5f
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/SIPUSH;-><init>()V

    move-object v2, v4

    .line 181
    goto :goto_0

    .line 177
    :sswitch_60
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/BIPUSH;

    invoke-direct {v4}, Lorg/checkerframework/org/apache/bcel/generic/BIPUSH;-><init>()V

    move-object v2, v4

    .line 178
    nop

    .line 472
    :goto_0
    if-eqz v0, :cond_3

    instance-of v4, v2, Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    if-nez v4, :cond_3

    instance-of v4, v2, Lorg/checkerframework/org/apache/bcel/generic/IINC;

    if-nez v4, :cond_3

    instance-of v4, v2, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-eqz v4, :cond_2

    goto :goto_1

    .line 474
    :cond_2
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Illegal opcode after wide: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 476
    :cond_3
    :goto_1
    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->setOpcode(S)V

    .line 477
    invoke-virtual {v2, p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V

    .line 478
    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_60
        0x11 -> :sswitch_5f
        0x12 -> :sswitch_5e
        0x13 -> :sswitch_5d
        0x14 -> :sswitch_5c
        0x15 -> :sswitch_5b
        0x16 -> :sswitch_5a
        0x17 -> :sswitch_59
        0x18 -> :sswitch_58
        0x19 -> :sswitch_57
        0x1a -> :sswitch_56
        0x1b -> :sswitch_55
        0x1c -> :sswitch_54
        0x1d -> :sswitch_53
        0x1e -> :sswitch_52
        0x1f -> :sswitch_51
        0x20 -> :sswitch_50
        0x21 -> :sswitch_4f
        0x22 -> :sswitch_4e
        0x23 -> :sswitch_4d
        0x24 -> :sswitch_4c
        0x25 -> :sswitch_4b
        0x26 -> :sswitch_4a
        0x27 -> :sswitch_49
        0x28 -> :sswitch_48
        0x29 -> :sswitch_47
        0x2a -> :sswitch_46
        0x2b -> :sswitch_45
        0x2c -> :sswitch_44
        0x2d -> :sswitch_43
        0x36 -> :sswitch_42
        0x37 -> :sswitch_41
        0x38 -> :sswitch_40
        0x39 -> :sswitch_3f
        0x3a -> :sswitch_3e
        0x3b -> :sswitch_3d
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3b
        0x3e -> :sswitch_3a
        0x3f -> :sswitch_39
        0x40 -> :sswitch_38
        0x41 -> :sswitch_37
        0x42 -> :sswitch_36
        0x43 -> :sswitch_35
        0x44 -> :sswitch_34
        0x45 -> :sswitch_33
        0x46 -> :sswitch_32
        0x47 -> :sswitch_31
        0x48 -> :sswitch_30
        0x49 -> :sswitch_2f
        0x4a -> :sswitch_2e
        0x4b -> :sswitch_2d
        0x4c -> :sswitch_2c
        0x4d -> :sswitch_2b
        0x4e -> :sswitch_2a
        0x84 -> :sswitch_29
        0x99 -> :sswitch_28
        0x9a -> :sswitch_27
        0x9b -> :sswitch_26
        0x9c -> :sswitch_25
        0x9d -> :sswitch_24
        0x9e -> :sswitch_23
        0x9f -> :sswitch_22
        0xa0 -> :sswitch_21
        0xa1 -> :sswitch_20
        0xa2 -> :sswitch_1f
        0xa3 -> :sswitch_1e
        0xa4 -> :sswitch_1d
        0xa5 -> :sswitch_1c
        0xa6 -> :sswitch_1b
        0xa7 -> :sswitch_1a
        0xa8 -> :sswitch_19
        0xa9 -> :sswitch_18
        0xaa -> :sswitch_17
        0xab -> :sswitch_16
        0xb2 -> :sswitch_15
        0xb3 -> :sswitch_14
        0xb4 -> :sswitch_13
        0xb5 -> :sswitch_12
        0xb6 -> :sswitch_11
        0xb7 -> :sswitch_10
        0xb8 -> :sswitch_f
        0xb9 -> :sswitch_e
        0xba -> :sswitch_d
        0xbb -> :sswitch_c
        0xbc -> :sswitch_b
        0xbd -> :sswitch_a
        0xc0 -> :sswitch_9
        0xc1 -> :sswitch_8
        0xc5 -> :sswitch_7
        0xc6 -> :sswitch_6
        0xc7 -> :sswitch_5
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_3
        0xca -> :sswitch_2
        0xfe -> :sswitch_1
        0xff -> :sswitch_0
    .end sparse-switch
.end method

.method public static setComparator(Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;)V
    .locals 0
    .param p0, "c"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 572
    sput-object p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->cmp:Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;

    .line 573
    return-void
.end method


# virtual methods
.method public abstract accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V
.end method

.method public consumeStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 489
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Const;->getConsumeStack(I)I

    move-result v0

    return v0
.end method

.method public copy()Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    .locals 3

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getOpcode()S

    move-result v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->getInstruction(I)Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 128
    move-object v0, p0

    goto :goto_0

    .line 131
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 134
    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 136
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    :goto_0
    return-object v0
.end method

.method dispose()V
    .locals 0

    .line 541
    return-void
.end method

.method public dump(Ljava/io/DataOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 71
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "that"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 581
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    if-eqz v0, :cond_0

    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->cmp:Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    invoke-interface {v0, p0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionComparator;->equals(Lorg/checkerframework/org/apache/bcel/generic/Instruction;Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 517
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->length:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 77
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Const;->getOpcodeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOpcode()S
    .locals 1

    .line 509
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    return v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 590
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    return v0
.end method

.method protected initFromFile(Lorg/checkerframework/org/apache/bcel/util/ByteSequence;Z)V
    .locals 0
    .param p1, "bytes"    # Lorg/checkerframework/org/apache/bcel/util/ByteSequence;
    .param p2, "wide"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 148
    return-void
.end method

.method public produceStack(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)I
    .locals 1
    .param p1, "cpg"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 501
    iget-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Const;->getProduceStack(I)I

    move-result v0

    return v0
.end method

.method final setLength(I)V
    .locals 1
    .param p1, "length"    # I

    .line 534
    int-to-short v0, p1

    iput-short v0, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->length:S

    .line 535
    return-void
.end method

.method final setOpcode(S)V
    .locals 0
    .param p1, "opcode"    # S

    .line 525
    iput-short p1, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    .line 526
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)Ljava/lang/String;
    .locals 1
    .param p1, "cp"    # Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 2
    .param p1, "verbose"    # Z

    .line 91
    if-eqz p1, :cond_0

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->opcode:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->length:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/Instruction;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
