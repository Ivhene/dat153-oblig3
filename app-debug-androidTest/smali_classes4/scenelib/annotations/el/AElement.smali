.class public Lscenelib/annotations/el/AElement;
.super Ljava/lang/Object;
.source "AElement.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public final description:Ljava/lang/Object;

.field public final tlAnnotationsHere:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lscenelib/annotations/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final type:Lscenelib/annotations/el/ATypeElement;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/Object;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;Z)V

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/Object;
    .param p2, "type"    # Lscenelib/annotations/el/ATypeElement;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    .line 62
    iput-object p1, p0, Lscenelib/annotations/el/AElement;->description:Ljava/lang/Object;

    .line 63
    iput-object p2, p0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    .line 64
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Z)V
    .locals 3
    .param p1, "description"    # Ljava/lang/Object;
    .param p2, "hasType"    # Z

    .line 56
    if-eqz p2, :cond_0

    new-instance v0, Lscenelib/annotations/el/ATypeElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/el/ATypeElement;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V

    .line 58
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/AElement;)V
    .locals 1
    .param p1, "elem"    # Lscenelib/annotations/el/AElement;

    .line 67
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, p1, v0}, Lscenelib/annotations/el/AElement;-><init>(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/ATypeElement;)V

    .line 68
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/AElement;Ljava/lang/Object;)V
    .locals 2
    .param p1, "elem"    # Lscenelib/annotations/el/AElement;
    .param p2, "description"    # Ljava/lang/Object;

    .line 77
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lscenelib/annotations/el/ATypeElement;->clone()Lscenelib/annotations/el/ATypeElement;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p2, v0}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V

    .line 78
    iget-object v0, p0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    iget-object v1, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/AElement;Lscenelib/annotations/el/ATypeElement;)V
    .locals 2
    .param p1, "elem"    # Lscenelib/annotations/el/AElement;
    .param p2, "type"    # Lscenelib/annotations/el/ATypeElement;

    .line 71
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->description:Ljava/lang/Object;

    if-nez p2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Lscenelib/annotations/el/ATypeElement;->clone()Lscenelib/annotations/el/ATypeElement;

    move-result-object v1

    .line 71
    :goto_0
    invoke-direct {p0, v0, v1}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;Lscenelib/annotations/el/ATypeElement;)V

    .line 73
    iget-object v0, p0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    iget-object v1, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 74
    return-void
.end method

.method static copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Lscenelib/annotations/el/AElement;",
            ">(",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 238
    .local p0, "orig":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    .local p1, "copy":Lscenelib/annotations/util/coll/VivifyingMap;, "Lscenelib/annotations/util/coll/VivifyingMap<TK;TV;>;"
    invoke-virtual {p0}, Lscenelib/annotations/util/coll/VivifyingMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 239
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    .line 240
    .local v2, "val":Lscenelib/annotations/el/AElement;, "TV;"
    invoke-virtual {v2}, Lscenelib/annotations/el/AElement;->clone()Lscenelib/annotations/el/AElement;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    .end local v2    # "val":Lscenelib/annotations/el/AElement;, "TV;"
    goto :goto_0

    .line 242
    :cond_0
    return-void
.end method

.method static newVivifyingLHMap_AE()Lscenelib/annotations/util/coll/VivifyingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;",
            "Lscenelib/annotations/el/AElement;",
            ">;"
        }
    .end annotation

    .line 206
    new-instance v0, Lscenelib/annotations/el/AElement$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AElement$1;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method static newVivifyingLHMap_AET()Lscenelib/annotations/util/coll/VivifyingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;",
            "Lscenelib/annotations/el/AElement;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Lscenelib/annotations/el/AElement$2;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AElement$2;-><init>(Ljava/util/Map;)V

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

    .line 200
    .local p1, "v":Lscenelib/annotations/el/ElementVisitor;, "Lscenelib/annotations/el/ElementVisitor<TR;TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/el/ElementVisitor;->visitElement(Lscenelib/annotations/el/AElement;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 22
    invoke-virtual {p0}, Lscenelib/annotations/el/AElement;->clone()Lscenelib/annotations/el/AElement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 85
    new-instance v0, Lscenelib/annotations/el/AElement;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/AElement;-><init>(Lscenelib/annotations/el/AElement;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 108
    instance-of v0, p1, Lscenelib/annotations/el/AElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/AElement;

    .line 109
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/AElement;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 108
    :goto_0
    return v0
.end method

.method public equals(Lscenelib/annotations/el/AElement;)Z
    .locals 1
    .param p1, "o"    # Lscenelib/annotations/el/AElement;

    .line 126
    invoke-virtual {p1, p0}, Lscenelib/annotations/el/AElement;->equalsElement(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    return v0
.end method

.method final equalsElement(Lscenelib/annotations/el/AElement;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/AElement;

    .line 130
    iget-object v0, p1, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    iget-object v1, p0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-nez v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    .line 131
    invoke-virtual {v0, v1}, Lscenelib/annotations/el/ATypeElement;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 130
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {v1}, Lscenelib/annotations/el/ATypeElement;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 136
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 146
    iget-object v0, p0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lscenelib/annotations/el/ATypeElement;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 146
    :goto_0
    return v0
.end method

.method public lookup(Ljava/lang/String;)Lscenelib/annotations/Annotation;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/Annotation;

    .line 181
    .local v1, "anno":Lscenelib/annotations/Annotation;
    iget-object v2, v1, Lscenelib/annotations/Annotation;->def:Lscenelib/annotations/el/AnnotationDef;

    iget-object v2, v2, Lscenelib/annotations/el/AnnotationDef;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 182
    return-object v1

    .line 184
    .end local v1    # "anno":Lscenelib/annotations/Annotation;
    :cond_0
    goto :goto_0

    .line 185
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public prune()V
    .locals 1

    .line 154
    iget-object v0, p0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v0}, Lscenelib/annotations/el/ATypeElement;->prune()V

    .line 155
    return-void
.end method

.method public tlAnnotationsHereFormatted(Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .line 189
    const/4 v0, 0x1

    .line 190
    .local v0, "first":Z
    iget-object v1, p0, Lscenelib/annotations/el/AElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/Annotation;

    .line 191
    .local v2, "aElement":Lscenelib/annotations/Annotation;
    if-nez v0, :cond_0

    .line 192
    const-string v3, ", "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 195
    invoke-virtual {v2}, Lscenelib/annotations/Annotation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .end local v2    # "aElement":Lscenelib/annotations/Annotation;
    goto :goto_0

    .line 197
    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lscenelib/annotations/el/AElement;->description:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {p0, v0}, Lscenelib/annotations/el/AElement;->tlAnnotationsHereFormatted(Ljava/lang/StringBuilder;)V

    .line 164
    iget-object v1, p0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-eqz v1, :cond_0

    .line 165
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    iget-object v1, p0, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v1}, Lscenelib/annotations/el/ATypeElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
