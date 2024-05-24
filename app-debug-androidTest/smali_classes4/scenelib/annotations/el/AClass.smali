.class public final Lscenelib/annotations/el/AClass;
.super Lscenelib/annotations/el/ADeclaration;
.source "AClass.java"


# instance fields
.field public final bounds:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/BoundLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field

.field public final className:Ljava/lang/String;

.field public final extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/TypeIndexLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field

.field public final fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AExpression;",
            ">;"
        }
    .end annotation
.end field

.field public final fields:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AField;",
            ">;"
        }
    .end annotation
.end field

.field public final instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/el/ABlock;",
            ">;"
        }
    .end annotation
.end field

.field public final methods:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AMethod;",
            ">;"
        }
    .end annotation
.end field

.field public final staticInits:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/el/ABlock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "class: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lscenelib/annotations/el/ADeclaration;-><init>(Ljava/lang/Object;)V

    .line 13
    nop

    .line 14
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 17
    nop

    .line 18
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 28
    nop

    .line 29
    invoke-static {}, Lscenelib/annotations/el/AClass;->createMethodMap()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 31
    nop

    .line 32
    invoke-static {}, Lscenelib/annotations/el/AClass;->createInitBlockMap()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 34
    nop

    .line 35
    invoke-static {}, Lscenelib/annotations/el/AClass;->createInitBlockMap()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 38
    nop

    .line 39
    invoke-static {}, Lscenelib/annotations/el/AField;->newVivifyingLHMap_AF()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 41
    nop

    .line 42
    invoke-static {}, Lscenelib/annotations/el/AClass;->createFieldInitMap()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 58
    iput-object p1, p0, Lscenelib/annotations/el/AClass;->className:Ljava/lang/String;

    .line 61
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/AClass;)V
    .locals 8
    .param p1, "clazz"    # Lscenelib/annotations/el/AClass;

    .line 69
    invoke-direct {p0, p1}, Lscenelib/annotations/el/ADeclaration;-><init>(Lscenelib/annotations/el/ADeclaration;)V

    .line 13
    nop

    .line 14
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 17
    nop

    .line 18
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v1

    iput-object v1, p0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 28
    nop

    .line 29
    invoke-static {}, Lscenelib/annotations/el/AClass;->createMethodMap()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v2

    iput-object v2, p0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 31
    nop

    .line 32
    invoke-static {}, Lscenelib/annotations/el/AClass;->createInitBlockMap()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v3

    iput-object v3, p0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 34
    nop

    .line 35
    invoke-static {}, Lscenelib/annotations/el/AClass;->createInitBlockMap()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v4

    iput-object v4, p0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 38
    nop

    .line 39
    invoke-static {}, Lscenelib/annotations/el/AField;->newVivifyingLHMap_AF()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v5

    iput-object v5, p0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 41
    nop

    .line 42
    invoke-static {}, Lscenelib/annotations/el/AClass;->createFieldInitMap()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v6

    iput-object v6, p0, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 70
    iget-object v7, p1, Lscenelib/annotations/el/AClass;->className:Ljava/lang/String;

    iput-object v7, p0, Lscenelib/annotations/el/AClass;->className:Ljava/lang/String;

    .line 71
    iget-object v7, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v7, v0}, Lscenelib/annotations/el/AClass;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 72
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v1}, Lscenelib/annotations/el/AClass;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 73
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v6}, Lscenelib/annotations/el/AClass;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 74
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v5}, Lscenelib/annotations/el/AClass;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 75
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v4}, Lscenelib/annotations/el/AClass;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 76
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v2}, Lscenelib/annotations/el/AClass;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 77
    iget-object v0, p1, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v0, v3}, Lscenelib/annotations/el/AClass;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 78
    return-void
.end method

.method private static createFieldInitMap()Lscenelib/annotations/util/coll/VivifyingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AExpression;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Lscenelib/annotations/el/AClass$3;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AClass$3;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createInitBlockMap()Lscenelib/annotations/util/coll/VivifyingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/el/ABlock;",
            ">;"
        }
    .end annotation

    .line 199
    new-instance v0, Lscenelib/annotations/el/AClass$2;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AClass$2;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private static createMethodMap()Lscenelib/annotations/util/coll/VivifyingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/String;",
            "Lscenelib/annotations/el/AMethod;",
            ">;"
        }
    .end annotation

    .line 185
    new-instance v0, Lscenelib/annotations/el/AClass$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AClass$1;-><init>(Ljava/util/Map;)V

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

    .line 179
    .local p1, "v":Lscenelib/annotations/el/ElementVisitor;, "Lscenelib/annotations/el/ElementVisitor<TR;TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/el/ElementVisitor;->visitClass(Lscenelib/annotations/el/AClass;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 11
    invoke-virtual {p0}, Lscenelib/annotations/el/AClass;->clone()Lscenelib/annotations/el/AClass;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/AClass;
    .locals 1

    .line 82
    new-instance v0, Lscenelib/annotations/el/AClass;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/AClass;-><init>(Lscenelib/annotations/el/AClass;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 11
    invoke-virtual {p0}, Lscenelib/annotations/el/AClass;->clone()Lscenelib/annotations/el/AClass;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 87
    instance-of v0, p1, Lscenelib/annotations/el/AClass;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/AClass;

    .line 88
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/AClass;->equalsClass(Lscenelib/annotations/el/AClass;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0
.end method

.method final equalsClass(Lscenelib/annotations/el/AClass;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/AClass;

    .line 92
    invoke-super {p0, p1}, Lscenelib/annotations/el/ADeclaration;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->className:Ljava/lang/String;

    iget-object v1, p1, Lscenelib/annotations/el/AClass;->className:Ljava/lang/String;

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 94
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 95
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 96
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 97
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 102
    invoke-super {p0}, Lscenelib/annotations/el/ADeclaration;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 103
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 104
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 105
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 110
    invoke-super {p0}, Lscenelib/annotations/el/ADeclaration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 111
    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 112
    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 113
    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0
.end method

.method public prune()V
    .locals 1

    .line 118
    invoke-super {p0}, Lscenelib/annotations/el/ADeclaration;->prune()V

    .line 119
    iget-object v0, p0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 120
    iget-object v0, p0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 121
    iget-object v0, p0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 122
    iget-object v0, p0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 123
    iget-object v0, p0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 124
    iget-object v0, p0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lscenelib/annotations/el/AClass;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unparse()Ljava/lang/String;
    .locals 1

    .line 133
    const-string v0, ""

    invoke-virtual {p0, v0}, Lscenelib/annotations/el/AClass;->unparse(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unparse(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "linePrefix"    # Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p0}, Lscenelib/annotations/el/AClass;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v2, "Annotations:\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    iget-object v2, p0, Lscenelib/annotations/el/AClass;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "  "

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/Annotation;

    .line 144
    .local v3, "a":Lscenelib/annotations/Annotation;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .end local v3    # "a":Lscenelib/annotations/Annotation;
    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v1, "Bounds:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "Extends/implements:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->extendsImplements:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, "Fields:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v1, "Field Initializers:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->fieldInits:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v1, "Static Initializers:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->staticInits:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v1, "Instance Initializers:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->instanceInits:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v1, "AST Typecasts:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->insertTypecasts:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v1, "AST Annotations:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->insertAnnotations:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    const-string v1, "Methods:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-object v1, p0, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/checkerframework/org/plumelib/util/CollectionsPlume;->mapToString(Ljava/lang/Appendable;Ljava/util/Map;Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
