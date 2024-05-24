.class public Lorg/checkerframework/framework/util/defaults/Default;
.super Ljava/lang/Object;
.source "Default.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/checkerframework/framework/util/defaults/Default;",
        ">;"
    }
.end annotation


# instance fields
.field public final anno:Ljavax/lang/model/element/AnnotationMirror;

.field public final location:Lorg/checkerframework/framework/qual/TypeUseLocation;


# direct methods
.method public constructor <init>(Ljavax/lang/model/element/AnnotationMirror;Lorg/checkerframework/framework/qual/TypeUseLocation;)V
    .locals 0
    .param p1, "anno"    # Ljavax/lang/model/element/AnnotationMirror;
    .param p2, "location"    # Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/checkerframework/framework/util/defaults/Default;->anno:Ljavax/lang/model/element/AnnotationMirror;

    .line 23
    iput-object p2, p0, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    .line 24
    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 16
    check-cast p1, Lorg/checkerframework/framework/util/defaults/Default;

    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/util/defaults/Default;->compareTo(Lorg/checkerframework/framework/util/defaults/Default;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/checkerframework/framework/util/defaults/Default;)I
    .locals 3
    .param p1, "other"    # Lorg/checkerframework/framework/util/defaults/Default;

    .line 28
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    iget-object v1, p1, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-virtual {v0, v1}, Lorg/checkerframework/framework/qual/TypeUseLocation;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    .line 29
    .local v0, "locationOrder":I
    if-nez v0, :cond_0

    .line 30
    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/Default;->anno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v2, p1, Lorg/checkerframework/framework/util/defaults/Default;->anno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-static {v1, v2}, Lorg/checkerframework/javacutil/AnnotationUtils;->compareAnnotationMirrors(Ljavax/lang/model/element/AnnotationMirror;Ljavax/lang/model/element/AnnotationMirror;)I

    move-result v1

    return v1

    .line 32
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObj"    # Ljava/lang/Object;

    .line 38
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 39
    return v0

    .line 42
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lorg/checkerframework/framework/util/defaults/Default;

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 46
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/checkerframework/framework/util/defaults/Default;

    invoke-virtual {p0, v2}, Lorg/checkerframework/framework/util/defaults/Default;->compareTo(Lorg/checkerframework/framework/util/defaults/Default;)I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 43
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 51
    iget-object v0, p0, Lorg/checkerframework/framework/util/defaults/Default;->anno:Ljavax/lang/model/element/AnnotationMirror;

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/Default;->location:Lorg/checkerframework/framework/qual/TypeUseLocation;

    invoke-virtual {v1}, Lorg/checkerframework/framework/qual/TypeUseLocation;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/framework/util/defaults/Default;->anno:Ljavax/lang/model/element/AnnotationMirror;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
