.class public Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;
.super Lorg/checkerframework/framework/util/Contract;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConditionalPostcondition"
.end annotation


# instance fields
.field public final resultValue:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;Z)V
    .locals 1
    .param p1, "expression"    # Ljava/lang/String;
    .param p2, "annotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p3, "contractAnnotation"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p4, "resultValue"    # Z

    .line 260
    sget-object v0, Lorg/checkerframework/framework/util/Contract$Kind;->CONDITIONALPOSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/checkerframework/framework/util/Contract;-><init>(Lorg/checkerframework/framework/util/Contract$Kind;Ljava/lang/String;Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)V

    .line 261
    iput-boolean p4, p0, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->resultValue:Z

    .line 262
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 266
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 267
    return v0

    .line 269
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 272
    :cond_1
    invoke-super {p0, p1}, Lorg/checkerframework/framework/util/Contract;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 273
    return v1

    .line 276
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;

    .line 277
    .local v2, "that":Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;
    iget-boolean v3, p0, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->resultValue:Z

    iget-boolean v4, v2, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->resultValue:Z

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    .line 270
    .end local v2    # "that":Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;
    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 282
    invoke-super {p0}, Lorg/checkerframework/framework/util/Contract;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->resultValue:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 287
    invoke-super {p0}, Lorg/checkerframework/framework/util/Contract;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "superToString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", annoResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/checkerframework/framework/util/Contract$ConditionalPostcondition;->resultValue:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
