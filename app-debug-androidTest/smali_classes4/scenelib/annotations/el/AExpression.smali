.class public Lscenelib/annotations/el/AExpression;
.super Lscenelib/annotations/el/AElement;
.source "AExpression.java"


# instance fields
.field public final calls:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/RelativeLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field

.field public final funs:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/RelativeLocation;",
            "Lscenelib/annotations/el/AMethod;",
            ">;"
        }
    .end annotation
.end field

.field protected id:Ljava/lang/Object;

.field public final instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/RelativeLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field

.field public final news:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/RelativeLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field

.field public final refs:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/RelativeLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field

.field public final typecasts:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/RelativeLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;

    .line 54
    invoke-direct {p0, p1}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;)V

    .line 18
    nop

    .line 19
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 22
    nop

    .line 23
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 26
    nop

    .line 27
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 30
    nop

    .line 31
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 34
    nop

    .line 35
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 38
    new-instance v0, Lscenelib/annotations/el/AExpression$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lscenelib/annotations/el/AExpression$1;-><init>(Lscenelib/annotations/el/AExpression;Ljava/util/Map;)V

    iput-object v0, p0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 56
    iput-object p1, p0, Lscenelib/annotations/el/AExpression;->id:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/AExpression;)V
    .locals 7
    .param p1, "expr"    # Lscenelib/annotations/el/AExpression;

    .line 60
    invoke-direct {p0, p1}, Lscenelib/annotations/el/AElement;-><init>(Lscenelib/annotations/el/AElement;)V

    .line 18
    nop

    .line 19
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 22
    nop

    .line 23
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v1

    iput-object v1, p0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 26
    nop

    .line 27
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v2

    iput-object v2, p0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 30
    nop

    .line 31
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v3

    iput-object v3, p0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 34
    nop

    .line 35
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v4

    iput-object v4, p0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 38
    new-instance v5, Lscenelib/annotations/el/AExpression$1;

    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v5, p0, v6}, Lscenelib/annotations/el/AExpression$1;-><init>(Lscenelib/annotations/el/AExpression;Ljava/util/Map;)V

    iput-object v5, p0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 61
    iget-object v6, p1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v6, v0}, Lscenelib/annotations/el/AExpression;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 62
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v1}, Lscenelib/annotations/el/AExpression;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 63
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v2}, Lscenelib/annotations/el/AExpression;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 64
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v3}, Lscenelib/annotations/el/AExpression;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 65
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v4}, Lscenelib/annotations/el/AExpression;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 66
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v5}, Lscenelib/annotations/el/AExpression;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 67
    iget-object v0, p1, Lscenelib/annotations/el/AExpression;->id:Ljava/lang/Object;

    iput-object v0, p0, Lscenelib/annotations/el/AExpression;->id:Ljava/lang/Object;

    .line 68
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

    .line 208
    .local p1, "v":Lscenelib/annotations/el/ElementVisitor;, "Lscenelib/annotations/el/ElementVisitor<TR;TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/el/ElementVisitor;->visitExpression(Lscenelib/annotations/el/AExpression;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 16
    invoke-virtual {p0}, Lscenelib/annotations/el/AExpression;->clone()Lscenelib/annotations/el/AExpression;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lscenelib/annotations/el/AExpression;->clone()Lscenelib/annotations/el/AExpression;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/AExpression;
    .locals 1

    .line 72
    new-instance v0, Lscenelib/annotations/el/AExpression;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/AExpression;-><init>(Lscenelib/annotations/el/AExpression;)V

    return-object v0
.end method

.method public equals(Lscenelib/annotations/el/AElement;)Z
    .locals 1
    .param p1, "o"    # Lscenelib/annotations/el/AElement;

    .line 77
    instance-of v0, p1, Lscenelib/annotations/el/AExpression;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/AExpression;

    .line 78
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/AExpression;->equalsExpression(Lscenelib/annotations/el/AExpression;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    return v0
.end method

.method protected equalsExpression(Lscenelib/annotations/el/AExpression;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/AExpression;

    .line 82
    invoke-super {p0, p1}, Lscenelib/annotations/el/AElement;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 83
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 84
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 85
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 86
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 87
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 88
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 82
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 93
    invoke-super {p0}, Lscenelib/annotations/el/AElement;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 94
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 95
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 100
    invoke-super {p0}, Lscenelib/annotations/el/AElement;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 101
    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 100
    :goto_0
    return v0
.end method

.method public prune()V
    .locals 1

    .line 106
    invoke-super {p0}, Lscenelib/annotations/el/AElement;->prune()V

    .line 107
    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 108
    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 109
    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 110
    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 111
    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 112
    iget-object v0, p0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 113
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 16

    .line 117
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v1, "sb":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 119
    .local v2, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    const/4 v3, 0x0

    .line 122
    .local v3, "prev":Lscenelib/annotations/el/RelativeLocation;
    iget-object v4, v0, Lscenelib/annotations/el/AExpression;->typecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/16 v6, 0x20

    const-string v7, ": "

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 123
    .local v5, "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    const-string v8, "typecast: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/RelativeLocation;

    .line 125
    .local v8, "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lscenelib/annotations/el/AElement;

    .line 128
    .local v7, "ae":Lscenelib/annotations/el/AElement;
    invoke-virtual {v7}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    .end local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v7    # "ae":Lscenelib/annotations/el/AElement;
    .end local v8    # "loc":Lscenelib/annotations/el/RelativeLocation;
    goto :goto_0

    .line 131
    :cond_0
    iget-object v4, v0, Lscenelib/annotations/el/AExpression;->instanceofs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 132
    .restart local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    const-string v8, "instanceof: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/RelativeLocation;

    .line 134
    .restart local v8    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/el/AElement;

    .line 137
    .local v9, "ae":Lscenelib/annotations/el/AElement;
    invoke-virtual {v9}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .end local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v8    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v9    # "ae":Lscenelib/annotations/el/AElement;
    goto :goto_1

    .line 140
    :cond_1
    iget-object v4, v0, Lscenelib/annotations/el/AExpression;->news:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 141
    .restart local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    const-string v8, "new "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/RelativeLocation;

    .line 143
    .restart local v8    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/el/AElement;

    .line 146
    .restart local v9    # "ae":Lscenelib/annotations/el/AElement;
    invoke-virtual {v9}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    .end local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v8    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v9    # "ae":Lscenelib/annotations/el/AElement;
    goto :goto_2

    .line 149
    :cond_2
    iget-object v4, v0, Lscenelib/annotations/el/AExpression;->refs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-interface {v2, v4}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 150
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v8, "typearg "

    const-string v9, "*"

    const-string v10, "#"

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 151
    .restart local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lscenelib/annotations/el/RelativeLocation;

    .line 152
    .local v13, "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lscenelib/annotations/el/AElement;

    .line 153
    .local v14, "ae":Lscenelib/annotations/el/AElement;
    iget v15, v13, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-gez v15, :cond_3

    const/4 v11, 0x1

    goto :goto_4

    :cond_3
    const/4 v11, 0x0

    .line 154
    .local v11, "isOffset":Z
    :goto_4
    if-eqz v3, :cond_5

    if-eqz v11, :cond_4

    iget v12, v13, Lscenelib/annotations/el/RelativeLocation;->offset:I

    iget v15, v3, Lscenelib/annotations/el/RelativeLocation;->offset:I

    if-ne v12, v15, :cond_7

    goto :goto_5

    :cond_4
    iget v12, v13, Lscenelib/annotations/el/RelativeLocation;->index:I

    iget v15, v3, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-ne v12, v15, :cond_7

    .line 157
    :cond_5
    :goto_5
    const-string v12, "reference "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    if-eqz v11, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v13, Lscenelib/annotations/el/RelativeLocation;->offset:I

    goto :goto_6

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v13, Lscenelib/annotations/el/RelativeLocation;->index:I

    :goto_6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v14}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_7
    iget v9, v13, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    if-ltz v9, :cond_8

    .line 163
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v14}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 168
    :cond_8
    move-object v3, v13

    .line 169
    .end local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v11    # "isOffset":Z
    .end local v13    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v14    # "ae":Lscenelib/annotations/el/AElement;
    goto/16 :goto_3

    .line 170
    :cond_9
    const/4 v3, 0x0

    .line 171
    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    .line 172
    iget-object v4, v0, Lscenelib/annotations/el/AExpression;->calls:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-interface {v2, v4}, Ljava/util/SortedMap;->putAll(Ljava/util/Map;)V

    .line 173
    invoke-interface {v2}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 174
    .restart local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lscenelib/annotations/el/RelativeLocation;

    .line 175
    .restart local v13    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lscenelib/annotations/el/AElement;

    .line 176
    .restart local v14    # "ae":Lscenelib/annotations/el/AElement;
    iget v15, v13, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-gez v15, :cond_a

    const/4 v15, 0x1

    goto :goto_8

    :cond_a
    const/4 v15, 0x0

    .line 177
    .local v15, "isOffset":Z
    :goto_8
    if-eqz v3, :cond_c

    if-eqz v15, :cond_b

    iget v11, v13, Lscenelib/annotations/el/RelativeLocation;->offset:I

    iget v12, v3, Lscenelib/annotations/el/RelativeLocation;->offset:I

    if-ne v11, v12, :cond_e

    goto :goto_9

    :cond_b
    iget v11, v13, Lscenelib/annotations/el/RelativeLocation;->index:I

    iget v12, v3, Lscenelib/annotations/el/RelativeLocation;->index:I

    if-ne v11, v12, :cond_e

    .line 180
    :cond_c
    :goto_9
    const-string v11, "call "

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    new-instance v11, Ljava/lang/StringBuilder;

    if-eqz v15, :cond_d

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v13, Lscenelib/annotations/el/RelativeLocation;->offset:I

    goto :goto_a

    :cond_d
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v13, Lscenelib/annotations/el/RelativeLocation;->index:I

    :goto_a
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_e
    iget v11, v13, Lscenelib/annotations/el/RelativeLocation;->type_index:I

    if-ltz v11, :cond_f

    .line 185
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v14}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 190
    :cond_f
    move-object v3, v13

    .line 191
    .end local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v13    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v14    # "ae":Lscenelib/annotations/el/AElement;
    .end local v15    # "isOffset":Z
    goto/16 :goto_7

    .line 192
    :cond_10
    const/4 v3, 0x0

    .line 193
    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    .line 194
    iget-object v4, v0, Lscenelib/annotations/el/AExpression;->funs:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v4}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 195
    .local v5, "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    const-string v8, "lambda "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/RelativeLocation;

    .line 197
    .restart local v8    # "loc":Lscenelib/annotations/el/RelativeLocation;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/el/AElement;

    .line 200
    .restart local v9    # "ae":Lscenelib/annotations/el/AElement;
    invoke-virtual {v9}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    .end local v5    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/RelativeLocation;Lscenelib/annotations/el/AMethod;>;"
    .end local v8    # "loc":Lscenelib/annotations/el/RelativeLocation;
    .end local v9    # "ae":Lscenelib/annotations/el/AElement;
    goto :goto_b

    .line 203
    :cond_11
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
