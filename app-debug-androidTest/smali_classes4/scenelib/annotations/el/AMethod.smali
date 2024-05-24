.class public final Lscenelib/annotations/el/AMethod;
.super Lscenelib/annotations/el/ADeclaration;
.source "AMethod.java"


# instance fields
.field public body:Lscenelib/annotations/el/ABlock;

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

.field public final methodName:Ljava/lang/String;

.field public final parameters:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Ljava/lang/Integer;",
            "Lscenelib/annotations/el/AField;",
            ">;"
        }
    .end annotation
.end field

.field public final receiver:Lscenelib/annotations/el/AField;

.field public final returnType:Lscenelib/annotations/el/ATypeElement;

.field public final throwsException:Lscenelib/annotations/util/coll/VivifyingMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscenelib/annotations/util/coll/VivifyingMap<",
            "Lscenelib/annotations/el/TypeIndexLocation;",
            "Lscenelib/annotations/el/ATypeElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lscenelib/annotations/el/ADeclaration;-><init>(Ljava/lang/Object;)V

    .line 12
    nop

    .line 13
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 22
    nop

    .line 23
    invoke-static {}, Lscenelib/annotations/el/AField;->newVivifyingLHMap_AF()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 25
    nop

    .line 26
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 33
    iput-object p1, p0, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    .line 34
    new-instance v0, Lscenelib/annotations/el/ABlock;

    invoke-direct {v0, p1}, Lscenelib/annotations/el/ABlock;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    .line 35
    new-instance v0, Lscenelib/annotations/el/ATypeElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/el/ATypeElement;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    .line 36
    new-instance v0, Lscenelib/annotations/el/AField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receiver parameter type of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lscenelib/annotations/el/AField;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    .line 37
    return-void
.end method

.method constructor <init>(Lscenelib/annotations/el/AMethod;)V
    .locals 4
    .param p1, "method"    # Lscenelib/annotations/el/AMethod;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "method: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lscenelib/annotations/el/ADeclaration;-><init>(Ljava/lang/Object;Lscenelib/annotations/el/ADeclaration;)V

    .line 12
    nop

    .line 13
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v0

    iput-object v0, p0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 22
    nop

    .line 23
    invoke-static {}, Lscenelib/annotations/el/AField;->newVivifyingLHMap_AF()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v1

    iput-object v1, p0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 25
    nop

    .line 26
    invoke-static {}, Lscenelib/annotations/el/ATypeElement;->newVivifyingLHMap_ATE()Lscenelib/annotations/util/coll/VivifyingMap;

    move-result-object v2

    iput-object v2, p0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 41
    iget-object v3, p1, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    iput-object v3, p0, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    .line 42
    iget-object v3, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-virtual {v3}, Lscenelib/annotations/el/ABlock;->clone()Lscenelib/annotations/el/ABlock;

    move-result-object v3

    iput-object v3, p0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    .line 43
    iget-object v3, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v3}, Lscenelib/annotations/el/ATypeElement;->clone()Lscenelib/annotations/el/ATypeElement;

    move-result-object v3

    iput-object v3, p0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    .line 44
    iget-object v3, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-virtual {v3}, Lscenelib/annotations/el/AField;->clone()Lscenelib/annotations/el/AField;

    move-result-object v3

    iput-object v3, p0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    .line 45
    iget-object v3, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v3, v0}, Lscenelib/annotations/el/AMethod;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 46
    iget-object v3, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v3, v1}, Lscenelib/annotations/el/AMethod;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 47
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v2}, Lscenelib/annotations/el/AMethod;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 48
    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v1, v0}, Lscenelib/annotations/el/AMethod;->copyMapContents(Lscenelib/annotations/util/coll/VivifyingMap;Lscenelib/annotations/util/coll/VivifyingMap;)V

    .line 49
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

    .line 133
    .local p1, "v":Lscenelib/annotations/el/ElementVisitor;, "Lscenelib/annotations/el/ElementVisitor<TR;TT;>;"
    .local p2, "t":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lscenelib/annotations/el/ElementVisitor;->visitMethod(Lscenelib/annotations/el/AMethod;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 10
    invoke-virtual {p0}, Lscenelib/annotations/el/AMethod;->clone()Lscenelib/annotations/el/AMethod;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lscenelib/annotations/el/AElement;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lscenelib/annotations/el/AMethod;->clone()Lscenelib/annotations/el/AMethod;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lscenelib/annotations/el/AMethod;
    .locals 1

    .line 53
    new-instance v0, Lscenelib/annotations/el/AMethod;

    invoke-direct {v0, p0}, Lscenelib/annotations/el/AMethod;-><init>(Lscenelib/annotations/el/AMethod;)V

    return-object v0
.end method

.method public equals(Lscenelib/annotations/el/AElement;)Z
    .locals 1
    .param p1, "o"    # Lscenelib/annotations/el/AElement;

    .line 58
    instance-of v0, p1, Lscenelib/annotations/el/AMethod;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lscenelib/annotations/el/AMethod;

    .line 59
    invoke-virtual {v0, p0}, Lscenelib/annotations/el/AMethod;->equalsMethod(Lscenelib/annotations/el/AMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    return v0
.end method

.method equalsMethod(Lscenelib/annotations/el/AMethod;)Z
    .locals 2
    .param p1, "o"    # Lscenelib/annotations/el/AMethod;

    .line 63
    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 64
    iget-object v0, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 66
    invoke-super {p0, p1}, Lscenelib/annotations/el/ADeclaration;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    .line 67
    invoke-virtual {v0, v1}, Lscenelib/annotations/el/ATypeElement;->equalsTypeElement(Lscenelib/annotations/el/ATypeElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 68
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    .line 69
    invoke-virtual {v0, v1}, Lscenelib/annotations/el/AField;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 70
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    .line 71
    invoke-virtual {v0, v1}, Lscenelib/annotations/el/ABlock;->equals(Lscenelib/annotations/el/AElement;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    iget-object v1, p1, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 73
    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 78
    invoke-super {p0}, Lscenelib/annotations/el/ADeclaration;->hashCode()I

    move-result v0

    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 79
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-virtual {v1}, Lscenelib/annotations/el/AField;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 80
    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    .line 81
    invoke-virtual {v1}, Lscenelib/annotations/el/ABlock;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 78
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 86
    invoke-super {p0}, Lscenelib/annotations/el/ADeclaration;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    .line 87
    invoke-virtual {v0}, Lscenelib/annotations/el/ATypeElement;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    .line 88
    invoke-virtual {v0}, Lscenelib/annotations/el/AField;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    .line 89
    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-virtual {v0}, Lscenelib/annotations/el/ABlock;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 86
    :goto_0
    return v0
.end method

.method public prune()V
    .locals 1

    .line 94
    invoke-super {p0}, Lscenelib/annotations/el/ADeclaration;->prune()V

    .line 95
    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 96
    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v0}, Lscenelib/annotations/el/ATypeElement;->prune()V

    .line 97
    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-virtual {v0}, Lscenelib/annotations/el/AField;->prune()V

    .line 98
    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 99
    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->throwsException:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lscenelib/annotations/util/coll/VivifyingMap;->prune()V

    .line 100
    iget-object v0, p0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-virtual {v0}, Lscenelib/annotations/el/ABlock;->prune()V

    .line 101
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "AMethod "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, ": ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string v1, " -1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    invoke-virtual {v1}, Lscenelib/annotations/el/AField;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lscenelib/annotations/util/coll/VivifyingMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, " "

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 113
    .local v2, "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 114
    .local v4, "i":Ljava/lang/Integer;
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 116
    const-string v5, ":"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/AElement;

    .line 118
    .local v5, "ae":Lscenelib/annotations/el/AElement;
    invoke-virtual {v5}, Lscenelib/annotations/el/AElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v3, v5, Lscenelib/annotations/el/AElement;->type:Lscenelib/annotations/el/ATypeElement;

    .line 121
    .local v3, "ate":Lscenelib/annotations/el/ATypeElement;
    invoke-virtual {v3}, Lscenelib/annotations/el/ATypeElement;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .end local v2    # "em":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lscenelib/annotations/el/AField;>;"
    .end local v3    # "ate":Lscenelib/annotations/el/ATypeElement;
    .end local v4    # "i":Ljava/lang/Integer;
    .end local v5    # "ae":Lscenelib/annotations/el/AElement;
    goto :goto_0

    .line 123
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    const-string v1, "ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-virtual {v1}, Lscenelib/annotations/el/ATypeElement;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    invoke-virtual {v1}, Lscenelib/annotations/el/ABlock;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
