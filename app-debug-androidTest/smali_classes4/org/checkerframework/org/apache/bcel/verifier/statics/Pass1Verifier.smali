.class public final Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;
.super Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;
.source "Pass1Verifier.java"


# instance fields
.field private jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

.field private final myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/verifier/Verifier;)V
    .locals 0
    .param p1, "owner"    # Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 74
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 76
    return-void
.end method

.method private getJavaClass()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    if-nez v0, :cond_0

    .line 58
    :try_start_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/org/apache/bcel/Repository;->lookupClass(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 66
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->jc:Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    return-object v0
.end method


# virtual methods
.method public do_verify()Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;
    .locals 5

    .line 150
    const/4 v0, 0x2

    :try_start_0
    invoke-direct {p0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->getJavaClass()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    move-result-object v1

    .line 152
    .local v1, "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    if-eqz v1, :cond_1

    .line 154
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/exc/LoadingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wrong name: the internal name of the .class file \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not match the file\'s name \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/verifier/statics/Pass1Verifier;->myOwner:Lorg/checkerframework/org/apache/bcel/verifier/Verifier;

    .line 158
    invoke-virtual {v4}, Lorg/checkerframework/org/apache/bcel/verifier/Verifier;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/bcel/verifier/exc/LoadingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Lorg/checkerframework/org/apache/bcel/verifier/exc/LoadingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_1
    :goto_0
    nop

    .line 176
    if-eqz v1, :cond_2

    .line 177
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;->VR_OK:Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    return-object v0

    .line 181
    :cond_2
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    const-string v3, "Repository.lookup() failed. FILE NOT FOUND?"

    invoke-direct {v2, v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 169
    .end local v1    # "jc":Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    :catch_0
    move-exception v1

    .line 172
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing via BCEL did not succeed. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 173
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " occured:\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/Utility;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    .line 172
    return-object v2

    .line 166
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    .line 167
    .local v1, "e":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v2

    .line 163
    .end local v1    # "e":Lorg/checkerframework/org/apache/bcel/classfile/ClassFormatException;
    :catch_2
    move-exception v1

    .line 164
    .local v1, "e":Lorg/checkerframework/org/apache/bcel/verifier/exc/LoadingException;
    new-instance v2, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/verifier/exc/LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/checkerframework/org/apache/bcel/verifier/VerificationResult;-><init>(ILjava/lang/String;)V

    return-object v2
.end method

.method public getMessages()[Ljava/lang/String;
    .locals 1

    .line 197
    invoke-super {p0}, Lorg/checkerframework/org/apache/bcel/verifier/PassVerifier;->getMessages()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
