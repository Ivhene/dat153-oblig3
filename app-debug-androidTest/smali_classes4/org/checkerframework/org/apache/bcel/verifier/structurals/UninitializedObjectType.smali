.class public Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;
.super Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;
.source "UninitializedObjectType.java"

# interfaces
.implements Lorg/checkerframework/org/apache/bcel/Constants;


# instance fields
.field private final initialized:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;


# direct methods
.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/ObjectType;)V
    .locals 2
    .param p1, "t"    # Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<UNINITIALIZED OBJECT OF TYPE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xf

    invoke-direct {p0, v1, v0}, Lorg/checkerframework/org/apache/bcel/generic/ReferenceType;-><init>(BLjava/lang/String;)V

    .line 42
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->initialized:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    .line 43
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 66
    instance-of v0, p1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    if-nez v0, :cond_0

    .line 67
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->initialized:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;

    iget-object v1, v1, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->initialized:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getInitialized()Lorg/checkerframework/org/apache/bcel/generic/ObjectType;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->initialized:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    return-object v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 56
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/UninitializedObjectType;->initialized:Lorg/checkerframework/org/apache/bcel/generic/ObjectType;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ObjectType;->hashCode()I

    move-result v0

    return v0
.end method
