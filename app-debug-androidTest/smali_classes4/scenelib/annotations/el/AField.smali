.class public Lscenelib/annotations/el/AField;
.super Lscenelib/annotations/el/ADeclaration;
.source "AField.java"


# instance fields
.field private final fieldName:Ljava/lang/String;

.field public init:Lscenelib/annotations/el/AExpression;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0, p1}, Lscenelib/annotations/el/ADeclaration;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object p1, p0, Lscenelib/annotations/el/AField;->fieldName:Ljava/lang/String;

    .line 15
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/AField;)V
    .locals 1
    .param p1, "field"    # Lscenelib/annotations/el/AField;

    .line 18
    iget-object v0, p1, Lscenelib/annotations/el/AField;->fieldName:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lscenelib/annotations/el/ADeclaration;-><init>(Ljava/lang/Object;Lscenelib/annotations/el/ADeclaration;)V

    .line 19
    iget-object v0, p1, Lscenelib/annotations/el/AField;->fieldName:Ljava/lang/String;

    iput-object v0, p0, Lscenelib/annotations/el/AField;->fieldName:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lscenelib/annotations/el/AExpression;->clone()Lscenelib/annotations/el/AExpression;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lscenelib/annotations/el/AField;->init:Lscenelib/annotations/el/AExpression;

    .line 21
    return-void
.end method

.method static newVivifyingLHMap_AF()Lscenelib/annotations/util/coll/VivifyingMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "TK;",
            "Lscenelib/annotations/el/AField;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Lscenelib/annotations/el/AField$1;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AField$1;-><init>(Ljava/util/Map;)V

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

    .line 49
    .local p1, "v":Lscenelib/annotations/el/ElementVisitor;, "Lscenelib/annotations/el/ElementVisitor<TR;TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/el/ElementVisitor;->visitField(Lscenelib/annotations/el/AField;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 7
    invoke-virtual {p0}, Lscenelib/annotations/el/AField;->clone()Lscenelib/annotations/el/AField;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 7
    invoke-virtual {p0}, Lscenelib/annotations/el/AField;->clone()Lscenelib/annotations/el/AField;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/AField;
    .locals 1

    .line 25
    new-instance v0, Lscenelib/annotations/el/AField;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/AField;-><init>(Lscenelib/annotations/el/AField;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p1, Lscenelib/annotations/el/AField;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/AField;

    .line 31
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/AField;->equalsField(Lscenelib/annotations/el/AField;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    return v0
.end method

.method final equalsField(Lscenelib/annotations/el/AField;)Z
    .locals 1
    .param p1, "o"    # Lscenelib/annotations/el/AField;

    .line 35
    invoke-super {p0, p1}, Lscenelib/annotations/el/ADeclaration;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AField "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-object v1, p0, Lscenelib/annotations/el/AField;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-super {p0}, Lscenelib/annotations/el/ADeclaration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
