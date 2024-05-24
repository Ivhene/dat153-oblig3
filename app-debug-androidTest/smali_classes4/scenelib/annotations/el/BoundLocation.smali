.class public final Lscenelib/annotations/el/BoundLocation;
.super Ljava/lang/Object;
.source "BoundLocation.java"


# instance fields
.field public final boundIndex:I

.field public final paramIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "paramIndex"    # I
    .param p2, "boundIndex"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    .line 31
    iput p2, p0, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    .line 32
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 51
    instance-of v0, p1, Lscenelib/annotations/el/BoundLocation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/BoundLocation;

    .line 52
    invoke-virtual {p0, v0}, Lscenelib/annotations/el/BoundLocation;->equals(Lscenelib/annotations/el/BoundLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/el/BoundLocation;)Z
    .locals 2
    .param p1, "l"    # Lscenelib/annotations/el/BoundLocation;

    .line 40
    iget v0, p0, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    iget v1, p1, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    iget v1, p1, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 57
    iget v0, p0, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoundLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/el/BoundLocation;->paramIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/el/BoundLocation;->boundIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
