.class public Lscenelib/annotations/el/ATypeElement;
.super Lscenelib/annotations/el/AElement;
.source "ATypeElement.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final lineSep:Ljava/lang/String;


# instance fields
.field public final innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/InnerTypeLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    nop

    .line 81
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lscenelib/annotations/el/ATypeElement;->lineSep:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/Object;

    .line 34
    invoke-direct {p0, p1}, Lscenelib/annotations/el/AElement;-><init>(Ljava/lang/Object;)V

    .line 30
    nop

    .line 31
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 35
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/ATypeElement;)V
    .locals 2
    .param p1, "elem"    # Lscenelib/annotations/el/ATypeElement;

    .line 38
    invoke-direct {p0, p1}, Lscenelib/annotations/el/AElement;-><init>(Lscenelib/annotations/el/AElement;)V

    .line 30
    nop

    .line 31
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 39
    iget-object v1, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v0}, Lscenelib/annotations/el/ATypeElement;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 40
    return-void
.end method

.method static newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation

    .line 112
    new-instance v0, Lscenelib/annotations/el/ATypeElement$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lscenelib/annotations/el/ATypeElement$1;-><init>(Ljava/util/Map;)V

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

    .line 108
    .local p1, "v":Lscenelib/annotations/el/ElementVisitor;, "Lscenelib/annotations/el/ElementVisitor<TR;TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/el/ElementVisitor;->visitTypeElement(Lscenelib/annotations/el/ATypeElement;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method checkRep()V
    .locals 1

    .line 48
    iget-object v0, p0, Lscenelib/annotations/el/ATypeElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-nez v0, :cond_0

    .line 49
    return-void

    .line 48
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lscenelib/annotations/el/ATypeElement;->clone()Lscenelib/annotations/el/ATypeElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lscenelib/annotations/el/ATypeElement;->clone()Lscenelib/annotations/el/ATypeElement;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/ATypeElement;
    .locals 1

    .line 44
    new-instance v0, Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/ATypeElement;-><init>(Lscenelib/annotations/el/ATypeElement;)V

    return-object v0
.end method

.method public equals(Lscenelib/annotations/el/AElement;)Z
    .locals 1
    .param p1, "o"    # Lscenelib/annotations/el/AElement;

    .line 53
    instance-of v0, p1, Lscenelib/annotations/el/ATypeElement;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/ATypeElement;

    .line 54
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/ATypeElement;->equalsTypeElement(Lscenelib/annotations/el/ATypeElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return v0
.end method

.method final equalsTypeElement(Lscenelib/annotations/el/ATypeElement;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/ATypeElement;

    .line 59
    invoke-virtual {p0, p1}, Lscenelib/annotations/el/ATypeElement;->equalsElement(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lscenelib/annotations/el/ATypeElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-nez v0, :cond_0

    iget-object v0, p1, Lscenelib/annotations/el/ATypeElement;->type:Lscenelib/annotations/el/ATypeElement;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lscenelib/annotations/el/ATypeElement;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v1, p0, Lscenelib/annotations/el/ATypeElement;->type:Lscenelib/annotations/el/ATypeElement;

    .line 60
    invoke-virtual {v0, v1}, Lscenelib/annotations/el/ATypeElement;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 59
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 65
    invoke-virtual {p0}, Lscenelib/annotations/el/ATypeElement;->checkRep()V

    .line 66
    iget-object v0, p0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 71
    invoke-virtual {p0}, Lscenelib/annotations/el/ATypeElement;->checkRep()V

    .line 72
    invoke-super {p0}, Lscenelib/annotations/el/AElement;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

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

    .line 77
    invoke-super {p0}, Lscenelib/annotations/el/AElement;->prune()V

    .line 78
    iget-object v0, p0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ATypeElement: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object v1, p0, Lscenelib/annotations/el/ATypeElement;->description:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object v1, p0, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/Annotation;

    .line 90
    .local v2, "a":Lscenelib/annotations/Annotation;
    invoke-virtual {v2}, Lscenelib/annotations/Annotation;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .end local v2    # "a":Lscenelib/annotations/Annotation;
    goto :goto_0

    .line 93
    :cond_0
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    const-string v1, "  "

    .line 95
    .local v1, "linePrefix":Ljava/lang/String;
    iget-object v2, p0, Lscenelib/annotations/el/ATypeElement;->innerTypes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v2}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 96
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/InnerTypeLocation;

    invoke-virtual {v4}, Lscenelib/annotations/el/InnerTypeLocation;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string v4, " => "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v4}, Lscenelib/annotations/el/ATypeElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v4, Lscenelib/annotations/el/ATypeElement;->lineSep:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lscenelib/annotations/el/InnerTypeLocation;Lscenelib/annotations/el/ATypeElement;>;"
    goto :goto_1

    .line 102
    :cond_1
    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
