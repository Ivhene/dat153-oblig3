.class public Lscenelib/annotations/el/TypeIndexLocation;
.super Ljava/lang/Object;
.source "TypeIndexLocation.java"


# instance fields
.field public final typeIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "typeIndex"    # I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput p1, p0, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 19
    instance-of v0, p1, Lscenelib/annotations/el/TypeIndexLocation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/TypeIndexLocation;

    .line 20
    invoke-virtual {p0, v0}, Lscenelib/annotations/el/TypeIndexLocation;->equals(Lscenelib/annotations/el/TypeIndexLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/el/TypeIndexLocation;)Z
    .locals 2
    .param p1, "l"    # Lscenelib/annotations/el/TypeIndexLocation;

    .line 14
    iget v0, p0, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    iget v1, p1, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 25
    iget v0, p0, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TypeIndexLocation("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/el/TypeIndexLocation;->typeIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
