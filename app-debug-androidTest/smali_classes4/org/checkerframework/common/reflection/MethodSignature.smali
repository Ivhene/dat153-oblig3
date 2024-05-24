.class Lorg/checkerframework/common/reflection/MethodSignature;
.super Ljava/lang/Object;
.source "MethodValAnnotatedTypeFactory.java"


# instance fields
.field className:Ljava/lang/String;

.field methodName:Ljava/lang/String;

.field params:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "params"    # I

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Lorg/checkerframework/common/reflection/MethodSignature;->className:Ljava/lang/String;

    .line 367
    iput-object p2, p0, Lorg/checkerframework/common/reflection/MethodSignature;->methodName:Ljava/lang/String;

    .line 368
    iput p3, p0, Lorg/checkerframework/common/reflection/MethodSignature;->params:I

    .line 369
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 378
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 379
    return v0

    .line 381
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 382
    return v1

    .line 384
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 385
    return v1

    .line 387
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/common/reflection/MethodSignature;

    .line 388
    .local v2, "other":Lorg/checkerframework/common/reflection/MethodSignature;
    iget-object v3, p0, Lorg/checkerframework/common/reflection/MethodSignature;->className:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 389
    iget-object v3, v2, Lorg/checkerframework/common/reflection/MethodSignature;->className:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 390
    return v1

    .line 392
    :cond_3
    iget-object v4, v2, Lorg/checkerframework/common/reflection/MethodSignature;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 393
    return v1

    .line 395
    :cond_4
    iget-object v3, p0, Lorg/checkerframework/common/reflection/MethodSignature;->methodName:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 396
    iget-object v3, v2, Lorg/checkerframework/common/reflection/MethodSignature;->methodName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 397
    return v1

    .line 399
    :cond_5
    iget-object v4, v2, Lorg/checkerframework/common/reflection/MethodSignature;->methodName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 400
    return v1

    .line 402
    :cond_6
    iget v3, p0, Lorg/checkerframework/common/reflection/MethodSignature;->params:I

    iget v4, v2, Lorg/checkerframework/common/reflection/MethodSignature;->params:I

    if-eq v3, v4, :cond_7

    .line 403
    return v1

    .line 405
    :cond_7
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 373
    iget-object v0, p0, Lorg/checkerframework/common/reflection/MethodSignature;->className:Ljava/lang/String;

    iget-object v1, p0, Lorg/checkerframework/common/reflection/MethodSignature;->methodName:Ljava/lang/String;

    iget v2, p0, Lorg/checkerframework/common/reflection/MethodSignature;->params:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MethodSignature [className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/reflection/MethodSignature;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", methodName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/common/reflection/MethodSignature;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/checkerframework/common/reflection/MethodSignature;->params:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
