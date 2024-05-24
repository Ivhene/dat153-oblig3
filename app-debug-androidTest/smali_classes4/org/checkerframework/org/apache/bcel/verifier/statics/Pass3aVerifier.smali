.class public final Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;
.super Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;
.source "Pass3aVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;
    }
.end annotation


# instance fields
.field private code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

.field private instructionList:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

.field private final method_no:I

.field private final myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/Verifier;I)V
    .locals 0
    .param p1, "owner"    # Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .param p2, "method_no"    # I

    .line 139
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;-><init>()V

    .line 140
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 141
    iput p2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->method_no:I

    .line 142
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    .line 115
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;)I
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;

    .line 115
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->method_no:I

    return v0
.end method

.method private static contains([II)Z
    .locals 4
    .param p0, "ints"    # [I
    .param p1, "i"    # I

    .line 458
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    .line 459
    .local v3, "k":I
    if-ne v3, p1, :cond_0

    .line 460
    const/4 v0, 0x1

    return v0

    .line 458
    .end local v3    # "k":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 463
    :cond_1
    return v1
.end method

.method private delayedPass2Checks()V
    .locals 20

    .line 239
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->instructionList:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getInstructionPositions()[I

    move-result-object v1

    .line 240
    .local v1, "instructionPositions":[I
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getCode()[B

    move-result-object v2

    array-length v2, v2

    .line 245
    .local v2, "codeLength":I
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getLineNumberTable()Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    move-result-object v3

    .line 246
    .local v3, "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    const-string v4, "\' referring to a code offset (\'"

    const-string v5, "\') that does not exist."

    const-string v7, "Code attribute \'"

    if-eqz v3, :cond_3

    .line 247
    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;->getLineNumberTable()[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;

    move-result-object v8

    .line 248
    .local v8, "lineNumbers":[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    new-instance v9, Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;

    invoke-direct {v9}, Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;-><init>()V

    .line 250
    .local v9, "offsets":Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;
    array-length v10, v8

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_3

    aget-object v12, v8, v11

    .line 251
    .local v12, "lineNumber":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    array-length v13, v1

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_2

    aget v15, v1, v14

    .line 253
    .local v15, "instructionPosition":I
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getStartPC()I

    move-result v6

    .line 254
    .local v6, "offset":I
    if-ne v15, v6, :cond_1

    .line 255
    invoke-virtual {v9, v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 256
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "LineNumberTable attribute \'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v14}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getLineNumberTable()Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\' refers to the same code offset (\'"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\') more than once which is violating the semantics [but is sometimes produced by IBM\'s \'jikes\' compiler]."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->addMessage(Ljava/lang/String;)V

    goto :goto_2

    .line 260
    :cond_0
    invoke-virtual {v9, v6}, Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;->add(I)V

    .line 262
    nop

    .line 250
    .end local v6    # "offset":I
    .end local v12    # "lineNumber":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    .end local v15    # "instructionPosition":I
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 251
    .restart local v12    # "lineNumber":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 265
    :cond_2
    new-instance v6, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\' has a LineNumberTable attribute \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v10, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 266
    invoke-virtual {v10}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getLineNumberTable()Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 267
    invoke-virtual {v12}, Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;->getStartPC()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 276
    .end local v8    # "lineNumbers":[Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    .end local v9    # "offsets":Lorg/checkerframework/org/apache/bcel/verifier/statics/IntList;
    .end local v12    # "lineNumber":Lorg/checkerframework/org/apache/bcel/classfile/LineNumber;
    :cond_3
    iget-object v6, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v6}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v6

    .line 277
    .local v6, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    array-length v8, v6

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_9

    aget-object v10, v6, v9

    .line 278
    .local v10, "att":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v11, v10, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    if-eqz v11, :cond_8

    .line 279
    move-object v11, v10

    check-cast v11, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    .line 280
    .local v11, "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    invoke-virtual {v11}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;->getLocalVariableTable()[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;

    move-result-object v12

    .line 281
    .local v12, "localVariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    array-length v13, v12

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v13, :cond_7

    aget-object v15, v12, v14

    .line 282
    .local v15, "localVariable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    move-object/from16 v16, v3

    .end local v3    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .local v16, "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getStartPC()I

    move-result v3

    .line 283
    .local v3, "startpc":I
    invoke-virtual {v15}, Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;->getLength()I

    move-result v17

    .line 285
    .local v17, "length":I
    invoke-static {v1, v3}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v18

    move-object/from16 v19, v6

    .end local v6    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v19, "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    const-string v6, "\' has a LocalVariableTable attribute \'"

    if-eqz v18, :cond_6

    .line 290
    move/from16 v18, v8

    add-int v8, v3, v17

    invoke-static {v1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v8

    if-nez v8, :cond_5

    add-int v8, v3, v17

    if-ne v8, v2, :cond_4

    goto :goto_5

    .line 291
    :cond_4
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 292
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getLocalVariableTable()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' referring to a code offset start_pc+length (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int v7, v3, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 281
    .end local v3    # "startpc":I
    .end local v15    # "localVariable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v17    # "length":I
    :cond_5
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v3, v16

    move/from16 v8, v18

    move-object/from16 v6, v19

    goto :goto_4

    .line 286
    .restart local v3    # "startpc":I
    .restart local v15    # "localVariable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .restart local v17    # "length":I
    :cond_6
    new-instance v8, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 287
    invoke-virtual {v7}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getLocalVariableTable()Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v8, v4}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 281
    .end local v15    # "localVariable":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v16    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .end local v17    # "length":I
    .end local v19    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v3, "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .restart local v6    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_7
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move/from16 v18, v8

    .end local v3    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .end local v6    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v16    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .restart local v19    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    goto :goto_6

    .line 278
    .end local v11    # "lvt":Lorg/checkerframework/org/apache/bcel/classfile/LocalVariableTable;
    .end local v12    # "localVariables":[Lorg/checkerframework/org/apache/bcel/classfile/LocalVariable;
    .end local v16    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .end local v19    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v3    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .restart local v6    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_8
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    move/from16 v18, v8

    .line 277
    .end local v3    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .end local v6    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v10    # "att":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v16    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .restart local v19    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v3, v16

    move/from16 v8, v18

    move-object/from16 v6, v19

    goto/16 :goto_3

    .line 306
    .end local v16    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .end local v19    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v3    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .restart local v6    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_9
    move-object/from16 v16, v3

    move-object/from16 v19, v6

    .end local v3    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .end local v6    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .restart local v16    # "lnt":Lorg/checkerframework/org/apache/bcel/classfile/LineNumberTable;
    .restart local v19    # "atts":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v3}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getExceptionTable()[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;

    move-result-object v3

    .line 307
    .local v3, "exceptionTable":[Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    array-length v4, v3

    const/4 v6, 0x0

    :goto_7
    if-ge v6, v4, :cond_f

    aget-object v5, v3, v6

    .line 308
    .local v5, "element":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getStartPC()I

    move-result v8

    .line 309
    .local v8, "startpc":I
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getEndPC()I

    move-result v9

    .line 310
    .local v9, "endpc":I
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/CodeException;->getHandlerPC()I

    move-result v10

    .line 311
    .local v10, "handlerpc":I
    const-string v11, "\')."

    const-string v12, "\' has an exception_table entry \'"

    if-ge v8, v9, :cond_e

    .line 315
    invoke-static {v1, v8}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 319
    invoke-static {v1, v9}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v13

    if-nez v13, :cond_b

    if-ne v9, v2, :cond_a

    goto :goto_8

    .line 320
    :cond_a
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' that has a non-existant bytecode offset as its end_pc (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\') [that is also not equal to code_length (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\')]."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 324
    :cond_b
    :goto_8
    invoke-static {v1, v10}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->contains([II)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 307
    .end local v5    # "element":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v8    # "startpc":I
    .end local v9    # "endpc":I
    .end local v10    # "handlerpc":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 325
    .restart local v5    # "element":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .restart local v8    # "startpc":I
    .restart local v9    # "endpc":I
    .restart local v10    # "handlerpc":I
    :cond_c
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' that has a non-existant bytecode offset as its handler_pc (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 316
    :cond_d
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' that has a non-existant bytecode offset as its start_pc (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 312
    :cond_e
    new-instance v4, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' that has its start_pc (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\') not smaller than its end_pc (\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 329
    .end local v5    # "element":Lorg/checkerframework/org/apache/bcel/classfile/CodeException;
    .end local v8    # "startpc":I
    .end local v9    # "endpc":I
    .end local v10    # "handlerpc":I
    :cond_f
    return-void
.end method

.method private pass3StaticInstructionChecks()V
    .locals 4

    .line 345
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getCode()[B

    move-result-object v0

    array-length v0, v0

    const/high16 v1, 0x10000

    if-ge v0, v1, :cond_6

    .line 365
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->instructionList:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 366
    .local v0, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v0, :cond_3

    .line 367
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    .line 368
    .local v1, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/IMPDEP1;

    if-nez v2, :cond_2

    .line 372
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/IMPDEP2;

    if-nez v2, :cond_1

    .line 376
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/BREAKPOINT;

    if-nez v2, :cond_0

    .line 380
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    .line 381
    .end local v1    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    goto :goto_0

    .line 377
    .restart local v1    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;

    const-string v3, "BREAKPOINT must not be in the code, it is an illegal instruction for _internal_ JVM use!"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 373
    :cond_1
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;

    const-string v3, "IMPDEP2 must not be in the code, it is an illegal instruction for _internal_ JVM use!"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 369
    :cond_2
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;

    const-string v3, "IMPDEP1 must not be in the code, it is an illegal instruction for _internal_ JVM use!"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 387
    .end local v1    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->instructionList:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getEnd()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v1

    .line 388
    .local v1, "last":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    if-nez v2, :cond_5

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/RET;

    if-nez v2, :cond_5

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/GotoInstruction;

    if-nez v2, :cond_5

    instance-of v2, v1, Lorg/checkerframework/org/apache/bcel/generic/ATHROW;

    if-eqz v2, :cond_4

    goto :goto_1

    .line 392
    :cond_4
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;

    const-string v3, "Execution must not fall off the bottom of the code array. This constraint is enforced statically as some existing verifiers do - so it may be a false alarm if the last instruction is not reachable."

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 397
    :cond_5
    :goto_1
    return-void

    .line 346
    .end local v0    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .end local v1    # "last":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    :cond_6
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Code array in code attribute \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' too big: must be smaller than "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "65536 bytes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionConstraintException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private pass3StaticInstructionOperandsChecks()V
    .locals 8

    .line 421
    :try_start_0
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 422
    .local v0, "cpg":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;

    invoke-direct {v1, p0, v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;-><init>(Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 425
    .local v1, "v":Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->instructionList:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v2

    .line 426
    .local v2, "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :goto_0
    if-eqz v2, :cond_3

    .line 427
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v3

    .line 430
    .local v3, "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    instance-of v4, v3, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    if-eqz v4, :cond_2

    .line 431
    move-object v4, v3

    check-cast v4, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;

    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/JsrInstruction;->getTarget()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4

    .line 432
    .local v4, "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    iget-object v5, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->instructionList:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->getStart()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v5

    if-eq v4, v5, :cond_1

    .line 437
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getInstruction()Lorg/checkerframework/org/apache/bcel/generic/Instruction;

    move-result-object v5

    instance-of v5, v5, Lorg/checkerframework/org/apache/bcel/generic/ASTORE;

    if-eqz v5, :cond_0

    goto :goto_1

    .line 438
    :cond_0
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionOperandConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Due to JustIce\'s clear definition of subroutines, no JSR or JSR_W may target anything else than an ASTORE instruction. Instruction \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' targets \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionOperandConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 433
    :cond_1
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionOperandConstraintException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Due to JustIce\'s clear definition of subroutines, no JSR or JSR_W may have a top-level instruction (such as the very first instruction, which is targeted by instruction \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' as its target."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeInstructionOperandConstraintException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 445
    .end local v4    # "target":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->accept(Lorg/checkerframework/org/apache/bcel/generic/Visitor;)V

    .line 447
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 448
    .end local v3    # "i":Lorg/checkerframework/org/apache/bcel/generic/Instruction;
    goto :goto_0

    .line 453
    .end local v0    # "cpg":Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .end local v1    # "v":Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier$InstOperandConstraintVisitor;
    .end local v2    # "ih":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_3
    nop

    .line 454
    return-void

    .line 450
    :catch_0
    move-exception v0

    .line 452
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public do_verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 9

    .line 164
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    .line 168
    .local v0, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v1

    .line 169
    .local v1, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->method_no:I

    array-length v3, v1

    if-ge v2, v3, :cond_2

    .line 172
    aget-object v2, v1, v2

    .line 173
    .local v2, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;

    move-result-object v3

    iput-object v3, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->code:Lorg/checkerframework/org/apache/bcel/classfile/Code;

    .line 176
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isAbstract()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->isNative()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 190
    :cond_0
    const/4 v3, 0x2

    :try_start_1
    new-instance v4, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getCode()Lorg/checkerframework/org/apache/bcel/classfile/Code;

    move-result-object v5

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/Code;->getCode()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>([B)V

    iput-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->instructionList:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    .line 195
    nop

    .line 197
    const/4 v5, 0x1

    :try_start_2
    invoke-virtual {v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->setPositions(Z)V

    .line 200
    sget-object v4, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 202
    .local v4, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_start_3
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->delayedPass2Checks()V
    :try_end_3
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    .line 207
    nop

    .line 209
    :try_start_4
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->pass3StaticInstructionChecks()V

    .line 210
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->pass3StaticInstructionOperandsChecks()V
    :try_end_4
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeConstraintException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 217
    :goto_0
    goto :goto_1

    .line 215
    :catch_0
    move-exception v5

    .line 216
    .local v5, "cce":Ljava/lang/ClassCastException;
    :try_start_5
    new-instance v6, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Class Cast Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    move-object v4, v6

    goto :goto_1

    .line 212
    .end local v5    # "cce":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v5

    .line 213
    .local v5, "scce":Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeConstraintException;
    new-instance v6, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    move-object v4, v6

    .end local v5    # "scce":Lorg/checkerframework/org/apache/bcel/verifier/exc/StaticCodeConstraintException;
    goto :goto_0

    .line 218
    :goto_1
    return-object v4

    .line 204
    :catch_2
    move-exception v5

    .line 205
    .local v5, "cce":Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;
    new-instance v6, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    move-object v3, v6

    .line 206
    .end local v4    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .local v3, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    return-object v3

    .line 192
    .end local v3    # "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .end local v5    # "cce":Lorg/checkerframework/org/apache/bcel/verifier/exc/ClassConstraintException;
    :catch_3
    move-exception v4

    .line 193
    .local v4, "re":Ljava/lang/RuntimeException;
    new-instance v5, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad bytecode in the code array of the Code attribute of method \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v5

    .line 177
    .end local v4    # "re":Ljava/lang/RuntimeException;
    :cond_1
    :goto_2
    sget-object v3, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    return-object v3

    .line 170
    .end local v2    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_2
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/InvalidMethodException;

    const-string v3, "METHOD DOES NOT EXIST!"

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/InvalidMethodException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    .end local v0    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v1    # "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_3
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_NOTYET:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    return-object v0

    .line 222
    :catch_4
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Missing class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/checkerframework/org/apache/bcel/verifier/exc/AssertionViolatedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getMethodNo()I
    .locals 1

    .line 468
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass3aVerifier;->method_no:I

    return v0
.end method
