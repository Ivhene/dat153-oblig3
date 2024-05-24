.class public Lscenelib/annotations/el/ATypeElementWithType;
.super Lscenelib/annotations/el/ATypeElement;
.source "ATypeElementWithType.java"


# instance fields
.field private type:Lscenelib/type/Type;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/Object;

    .line 21
    invoke-direct {p0, p1}, Lscenelib/annotations/el/ATypeElement;-><init>(Ljava/lang/Object;)V

    .line 22
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/ATypeElementWithType;)V
    .locals 1
    .param p1, "elem"    # Lscenelib/annotations/el/ATypeElementWithType;

    .line 25
    invoke-direct {p0, p1}, Lscenelib/annotations/el/ATypeElement;-><init>(Lscenelib/annotations/el/ATypeElement;)V

    .line 26
    iget-object v0, p1, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    iput-object v0, p0, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    .line 27
    return-void
.end method

.method static newVivifyingLHMap_ATEWT()Lscenelib/annotations/util/coll/VivifyingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;",
            "Lscenelib/annotations/el/ATypeElementWithType;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Lscenelib/annotations/el/ATypeElementWithType$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lscenelib/annotations/el/ATypeElementWithType$1;-><init>(Ljava/util/Map;)V

    return-object v0
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

    .line 95
    .local p1, "v":Lscenelib/annotations/el/ElementVisitor;, "Lscenelib/annotations/el/ElementVisitor<TR;TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/el/ElementVisitor;->visitTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 13
    invoke-virtual {p0}, Lscenelib/annotations/el/ATypeElementWithType;->clone()Lscenelib/annotations/el/ATypeElementWithType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lscenelib/annotations/el/ATypeElementWithType;->clone()Lscenelib/annotations/el/ATypeElementWithType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/ATypeElement;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lscenelib/annotations/el/ATypeElementWithType;->clone()Lscenelib/annotations/el/ATypeElementWithType;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/ATypeElementWithType;
    .locals 1

    .line 31
    new-instance v0, Lscenelib/annotations/el/ATypeElementWithType;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/ATypeElementWithType;-><init>(Lscenelib/annotations/el/ATypeElementWithType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 54
    instance-of v0, p1, Lscenelib/annotations/el/ATypeElementWithType;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/ATypeElementWithType;

    .line 55
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/ATypeElementWithType;->equalsTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    return v0
.end method

.method public equalsTypeElementWithType(Lscenelib/annotations/el/ATypeElementWithType;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/ATypeElementWithType;

    .line 62
    invoke-super {p0, p1}, Lscenelib/annotations/el/ATypeElement;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    if-nez v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_1
    return v0
.end method

.method public getType()Lscenelib/type/Type;
    .locals 1

    .line 40
    iget-object v0, p0, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 68
    invoke-super {p0}, Lscenelib/annotations/el/ATypeElement;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public prune()V
    .locals 0

    .line 79
    invoke-super {p0}, Lscenelib/annotations/el/ATypeElement;->prune()V

    .line 81
    return-void
.end method

.method public setType(Lscenelib/type/Type;)V
    .locals 0
    .param p1, "type"    # Lscenelib/type/Type;

    .line 49
    iput-object p1, p0, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    .line 50
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AInsertTypecastTypeElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    invoke-super {p0}, Lscenelib/annotations/el/ATypeElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lscenelib/annotations/el/ATypeElementWithType;->type:Lscenelib/type/Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
