.class public abstract Lscenelib/annotations/el/ADeclaration;
.super Lscenelib/annotations/el/AElement;
.source "ADeclaration.java"


# instance fields
.field public final insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/io/ASTPath;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field

.field public final insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/io/ASTPath;",
            "Lscenelib/annotations/el/ATypeElementWithType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .param p1, "description"    # Ljava/lang/Object;

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;Z)V

    .line 15
    new-instance v0, Lscenelib/annotations/el/ADeclaration$1;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lscenelib/annotations/el/ADeclaration$1;-><init>(Lscenelib/annotations/el/ADeclaration;Ljava/util/Map;)V

    iput-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 29
    new-instance v0, Lscenelib/annotations/el/ADeclaration$2;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lscenelib/annotations/el/ADeclaration$2;-><init>(Lscenelib/annotations/el/ADeclaration;Ljava/util/Map;)V

    iput-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 44
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lscenelib/annotations/el/ADeclaration;)V
    .locals 3
    .param p1, "description"    # Ljava/lang/Object;
    .param p2, "decl"    # Lscenelib/annotations/el/ADeclaration;

    .line 53
    invoke-direct {p0, p2, p1}, Lscenelib/annotations/el/AElement;-><init>(Lscenelib/annotations/el/AElement;Ljava/lang/Object;)V

    .line 15
    new-instance v0, Lscenelib/annotations/el/ADeclaration$1;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lscenelib/annotations/el/ADeclaration$1;-><init>(Lscenelib/annotations/el/ADeclaration;Ljava/util/Map;)V

    iput-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 29
    new-instance v1, Lscenelib/annotations/el/ADeclaration$2;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v1, p0, v2}, Lscenelib/annotations/el/ADeclaration$2;-><init>(Lscenelib/annotations/el/ADeclaration;Ljava/util/Map;)V

    iput-object v1, p0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 54
    iget-object v2, p2, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v2, v0}, Lscenelib/annotations/el/ADeclaration;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 55
    iget-object v0, p2, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v1}, Lscenelib/annotations/el/ADeclaration;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 56
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/ADeclaration;)V
    .locals 3
    .param p1, "decl"    # Lscenelib/annotations/el/ADeclaration;

    .line 47
    invoke-direct {p0, p1}, Lscenelib/annotations/el/AElement;-><init>(Lscenelib/annotations/el/AElement;)V

    .line 15
    new-instance v0, Lscenelib/annotations/el/ADeclaration$1;

    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v0, p0, v1}, Lscenelib/annotations/el/ADeclaration$1;-><init>(Lscenelib/annotations/el/ADeclaration;Ljava/util/Map;)V

    iput-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 29
    new-instance v1, Lscenelib/annotations/el/ADeclaration$2;

    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    invoke-direct {v1, p0, v2}, Lscenelib/annotations/el/ADeclaration$2;-><init>(Lscenelib/annotations/el/ADeclaration;Ljava/util/Map;)V

    iput-object v1, p0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 48
    iget-object v2, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v2, v0}, Lscenelib/annotations/el/ADeclaration;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 49
    iget-object v0, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v1}, Lscenelib/annotations/el/ADeclaration;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 50
    return-void
.end method

.method private equalsDeclaration(Lscenelib/annotations/el/ADeclaration;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/ADeclaration;

    .line 65
    invoke-super {p0, p1}, Lscenelib/annotations/el/AElement;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 66
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 67
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 65
    :goto_0
    return v0
.end method


# virtual methods
.method public abstract accept(Lscenelib/annotations/el/ElementVisitor;Ljava/lang/Object;)Ljava/lang/Object;
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
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 60
    instance-of v0, p1, Lscenelib/annotations/el/ADeclaration;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/ADeclaration;

    .line 61
    invoke-direct {v0, p0}, Lscenelib/annotations/el/ADeclaration;->equalsDeclaration(Lscenelib/annotations/el/ADeclaration;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 72
    invoke-super {p0}, Lscenelib/annotations/el/AElement;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    if-nez v1, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    .line 72
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 79
    invoke-super {p0}, Lscenelib/annotations/el/AElement;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 79
    :goto_0
    return v0
.end method

.method public prune()V
    .locals 1

    .line 86
    invoke-super {p0}, Lscenelib/annotations/el/AElement;->prune()V

    .line 87
    iget-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 88
    :cond_0
    iget-object v0, p0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 89
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lscenelib/annotations/el/ADeclaration;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/16 v3, 0x20

    const-string v4, ": "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 96
    .local v2, "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    const-string v5, "insert-annotation: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/io/ASTPath;

    .line 98
    .local v5, "loc":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    .line 101
    .local v4, "ae":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v4}, Lscenelib/annotations/el/ATypeElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    .end local v2    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElement;>;"
    .end local v4    # "ae":Lscenelib/annotations/el/ATypeElement;
    .end local v5    # "loc":Lscenelib/annotations/io/ASTPath;
    goto :goto_0

    .line 105
    :cond_0
    iget-object v1, p0, Lscenelib/annotations/el/ADeclaration;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 106
    .local v2, "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    const-string v5, "insert-typecast: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/io/ASTPath;

    .line 108
    .restart local v5    # "loc":Lscenelib/annotations/io/ASTPath;
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/AElement;

    .line 111
    .local v6, "ae":Lscenelib/annotations/el/AElement;
    invoke-virtual {v6}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 113
    .end local v2    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/io/ASTPath;Lscenelib/annotations/el/ATypeElementWithType;>;"
    .end local v5    # "loc":Lscenelib/annotations/io/ASTPath;
    .end local v6    # "ae":Lscenelib/annotations/el/AElement;
    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
