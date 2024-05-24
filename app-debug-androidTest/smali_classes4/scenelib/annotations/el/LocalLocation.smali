.class public final Lscenelib/annotations/el/LocalLocation;
.super Ljava/lang/Object;
.source "LocalLocation.java"


# instance fields
.field public final index:I

.field public final scopeLength:I

.field public final scopeStart:I

.field public final varIndex:I

.field public final varName:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "scopeStart"    # I
    .param p3, "scopeLength"    # I

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lscenelib/annotations/el/LocalLocation;->index:I

    .line 35
    iput p2, p0, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    .line 36
    iput p3, p0, Lscenelib/annotations/el/LocalLocation;->scopeLength:I

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lscenelib/annotations/el/LocalLocation;->varIndex:I

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "varIndex"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lscenelib/annotations/el/LocalLocation;->index:I

    .line 43
    iput v0, p0, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    .line 44
    iput v0, p0, Lscenelib/annotations/el/LocalLocation;->scopeLength:I

    .line 45
    iput-object p1, p0, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lscenelib/annotations/el/LocalLocation;->varIndex:I

    .line 47
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 70
    instance-of v0, p1, Lscenelib/annotations/el/LocalLocation;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/LocalLocation;

    .line 71
    invoke-virtual {p0, v0}, Lscenelib/annotations/el/LocalLocation;->equals(Lscenelib/annotations/el/LocalLocation;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 70
    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/el/LocalLocation;)Z
    .locals 2
    .param p1, "l"    # Lscenelib/annotations/el/LocalLocation;

    .line 56
    iget v0, p0, Lscenelib/annotations/el/LocalLocation;->index:I

    iget v1, p1, Lscenelib/annotations/el/LocalLocation;->index:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    iget v1, p1, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lscenelib/annotations/el/LocalLocation;->scopeLength:I

    iget v1, p1, Lscenelib/annotations/el/LocalLocation;->scopeLength:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lscenelib/annotations/el/LocalLocation;->varIndex:I

    iget v1, p1, Lscenelib/annotations/el/LocalLocation;->varIndex:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 56
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 77
    iget v0, p0, Lscenelib/annotations/el/LocalLocation;->index:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lscenelib/annotations/el/LocalLocation;->scopeLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 79
    :cond_0
    iget v1, p0, Lscenelib/annotations/el/LocalLocation;->varIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 85
    iget-object v0, p0, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    const-string v1, ")"

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalLocation("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lscenelib/annotations/el/LocalLocation;->index:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lscenelib/annotations/el/LocalLocation;->scopeStart:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lscenelib/annotations/el/LocalLocation;->scopeLength:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 88
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LocalLocation(\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lscenelib/annotations/el/LocalLocation;->varName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lscenelib/annotations/el/LocalLocation;->varIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
