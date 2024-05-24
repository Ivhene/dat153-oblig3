.class public Lscenelib/annotations/el/ABlock;
.super Lscenelib/annotations/el/AExpression;
.source "ABlock.java"


# instance fields
.field public final locals:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/LocalLocation;",
            "Lscenelib/annotations/el/AField;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;

    .line 20
    invoke-direct {p0, p1}, Lscenelib/annotations/el/AExpression;-><init>(Ljava/lang/Object;)V

    .line 16
    nop

    .line 17
    invoke-static {}, Lscenelib/annotations/el/AField;->newVivifyingLHMap_AF()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 21
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/ABlock;)V
    .locals 2
    .param p1, "block"    # Lscenelib/annotations/el/ABlock;

    .line 24
    invoke-direct {p0, p1}, Lscenelib/annotations/el/AExpression;-><init>(Lscenelib/annotations/el/AExpression;)V

    .line 16
    nop

    .line 17
    invoke-static {}, Lscenelib/annotations/el/AField;->newVivifyingLHMap_AF()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 25
    iget-object v1, p1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v0}, Lscenelib/annotations/el/ABlock;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 26
    return-void
.end method


# virtual methods
.method public accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lscenelib/annotations/el/ElementVisitor<",
            "TR;TT;>;TT;)TR;"
        }
    .end annotation

    .line 79
    .local p1, "v":Lscenelib/annotations/el/ElementVisitor;, "Lscenelib/annotations/el/ElementVisitor<TR;TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/el/ElementVisitor;->visitBlock(Lscenelib/annotations/el/ABlock;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lscenelib/annotations/el/ABlock;->clone()Lscenelib/annotations/el/ABlock;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/ABlock;
    .locals 1

    .line 30
    new-instance v0, Lscenelib/annotations/el/ABlock;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/ABlock;-><init>(Lscenelib/annotations/el/ABlock;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lscenelib/annotations/el/ABlock;->clone()Lscenelib/annotations/el/ABlock;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AExpression;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lscenelib/annotations/el/ABlock;->clone()Lscenelib/annotations/el/ABlock;

    move-result-object v0

    return-object v0
.end method

.method public equals(Lscenelib/annotations/el/AElement;)Z
    .locals 1
    .param p1, "o"    # Lscenelib/annotations/el/AElement;

    .line 35
    instance-of v0, p1, Lscenelib/annotations/el/ABlock;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/ABlock;

    .line 36
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/ABlock;->equalsBlock(Lscenelib/annotations/el/ABlock;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    :goto_0
    return v0
.end method

.method protected equalsBlock(Lscenelib/annotations/el/ABlock;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/ABlock;

    .line 40
    invoke-super {p0, p1}, Lscenelib/annotations/el/AExpression;->equalsExpression(Lscenelib/annotations/el/AExpression;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 41
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 46
    invoke-super {p0}, Lscenelib/annotations/el/AExpression;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 51
    invoke-super {p0}, Lscenelib/annotations/el/AExpression;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prune()V
    .locals 1

    .line 56
    invoke-super {p0}, Lscenelib/annotations/el/AExpression;->prune()V

    .line 57
    iget-object v0, p0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .local v2, "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/LocalLocation;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/LocalLocation;

    .line 67
    .local v3, "loc":Lscenelib/annotations/el/LocalLocation;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/AElement;

    .line 70
    .local v4, "ae":Lscenelib/annotations/el/AElement;
    invoke-virtual {v4}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    .end local v2    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/LocalLocation;Lscenelib/annotations/el/AField;>;"
    .end local v3    # "loc":Lscenelib/annotations/el/LocalLocation;
    .end local v4    # "ae":Lscenelib/annotations/el/AElement;
    goto :goto_0

    .line 73
    :cond_0
    invoke-super {p0}, Lscenelib/annotations/el/AExpression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
