.class public Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;
.super Ljava/lang/Object;
.source "TransitiveHull.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;


# instance fields
.field private indent:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;->indent:I

    .line 39
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;

    .line 91
    array-length v0, p0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 92
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Need exactly one argument: The root class to verify."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 93
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 95
    :cond_0
    const/4 v0, 0x0

    aget-object v1, p0, v0

    const-string v2, ".class"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 96
    .local v1, "dotclasspos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 97
    aget-object v2, p0, v0

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    .line 99
    :cond_1
    aget-object v2, p0, v0

    const/16 v3, 0x2f

    const/16 v4, 0x2e

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v0

    .line 100
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;

    invoke-direct {v2}, Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;-><init>()V

    .line 101
    .local v2, "th":Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->attach(Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;)V

    .line 102
    aget-object v0, p0, v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 103
    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->detach(Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactoryObserver;)V

    .line 104
    return-void
.end method


# virtual methods
.method public update(Ljava/lang/String;)V
    .locals 9
    .param p1, "classname"    # Ljava/lang/String;

    .line 45
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;->indent:I

    if-ge v0, v1, :cond_0

    .line 47
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 50
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;->indent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;->indent:I

    .line 51
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/verifier/VerifierFactory;->getVerifier(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    move-result-object v0

    .line 53
    .local v0, "v":Lorg/checkerframework/org/apache/bcel/verifier/Verifier;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass1()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v1

    .line 54
    .local v1, "vr":Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    sget-object v2, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-eq v1, v2, :cond_1

    .line 55
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pass 1:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 57
    :cond_1
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass2()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v1

    .line 58
    sget-object v2, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-eq v1, v2, :cond_2

    .line 59
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pass 2:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :cond_2
    sget-object v2, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-ne v1, v2, :cond_6

    .line 63
    :try_start_0
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v2

    .line 64
    .local v2, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 65
    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass3a(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v4

    move-object v1, v4

    .line 66
    sget-object v4, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "\']:\n"

    const-string v6, " [\'"

    if-eq v1, v4, :cond_3

    .line 67
    :try_start_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pass 3a, method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 68
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v8

    aget-object v8, v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 67
    invoke-virtual {v4, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    :cond_3
    invoke-virtual {v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->doPass3b(I)Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    move-result-object v4

    move-object v1, v4

    .line 71
    sget-object v4, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    if-eq v1, v4, :cond_4

    .line 72
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Pass 3b, method "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 73
    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v7

    aget-object v7, v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 64
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 78
    .end local v2    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .end local v3    # "i":I
    :cond_5
    goto :goto_2

    .line 76
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not find class "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in Repository"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 80
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :cond_6
    :goto_2
    iget v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;->indent:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/TransitiveHull;->indent:I

    .line 81
    return-void
.end method
