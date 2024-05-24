.class public final Lscenelib/annotations/el/RelativeLocation;
.super Ljava/lang/Object;
.source "RelativeLocation.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lscenelib/annotations/el/RelativeLocation;",
        ">;"
    }
.end annotation


# instance fields
.field public final index:I

.field public final offset:I

.field public final type_index:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .param p1, "offset"    # I
    .param p2, "index"    # I
    .param p3, "type_index"    # I

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lscenelib/annotations/el/RelativeLocation;->offset:I

    .line 33
    iput p2, p0, Lscenelib/annotations/el/RelativeLocation;->index:I

    .line 34
    iput p3, p0, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    .line 35
    return-void
.end method

.method public static createIndex(II)Lscenelib/annotations/el/RelativeLocation;
    .locals 2
    .param p0, "index"    # I
    .param p1, "type_index"    # I

    .line 42
    new-instance v0, Lscenelib/annotations/el/RelativeLocation;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0, p1}, Lscenelib/annotations/el/RelativeLocation;-><init>(III)V

    return-object v0
.end method

.method public static createOffset(II)Lscenelib/annotations/el/RelativeLocation;
    .locals 2
    .param p0, "offset"    # I
    .param p1, "type_index"    # I

    .line 38
    new-instance v0, Lscenelib/annotations/el/RelativeLocation;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, p1}, Lscenelib/annotations/el/RelativeLocation;-><init>(III)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 10
    check-cast p1, Lscenelib/annotations/el/RelativeLocation;

    invoke-virtual {p0, p1}, Lscenelib/annotations/el/RelativeLocation;->compareTo(Lscenelib/annotations/el/RelativeLocation;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lscenelib/annotations/el/RelativeLocation;)I
    .locals 3
    .param p1, "l"    # Lscenelib/annotations/el/RelativeLocation;

    .line 59
    iget v0, p0, Lscenelib/annotations/el/RelativeLocation;->offset:I

    iget v1, p1, Lscenelib/annotations/el/RelativeLocation;->offset:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 60
    .local v0, "c":I
    if-nez v0, :cond_0

    .line 61
    iget v1, p0, Lscenelib/annotations/el/RelativeLocation;->index:I

    iget v2, p1, Lscenelib/annotations/el/RelativeLocation;->index:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 62
    if-nez v0, :cond_0

    .line 63
    iget v1, p0, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    iget v2, p1, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 66
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 85
    instance-of v0, p1, Lscenelib/annotations/el/RelativeLocation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/RelativeLocation;

    .line 86
    invoke-virtual {p0, v0}, Lscenelib/annotations/el/RelativeLocation;->equals(Lscenelib/annotations/el/RelativeLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/el/RelativeLocation;)Z
    .locals 1
    .param p1, "l"    # Lscenelib/annotations/el/RelativeLocation;

    .line 75
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/RelativeLocation;->compareTo(Lscenelib/annotations/el/RelativeLocation;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getLocationString()Ljava/lang/String;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lscenelib/annotations/el/RelativeLocation;->isBytecodeOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/el/RelativeLocation;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/el/RelativeLocation;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 91
    iget v0, p0, Lscenelib/annotations/el/RelativeLocation;->offset:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/el/RelativeLocation;->index:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isBytecodeOffset()Z
    .locals 2

    .line 46
    iget v0, p0, Lscenelib/annotations/el/RelativeLocation;->offset:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RelativeLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lscenelib/annotations/el/RelativeLocation;->getLocationString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
