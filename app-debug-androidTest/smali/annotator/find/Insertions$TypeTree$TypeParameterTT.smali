.class final Lannotator/find/Insertions$TypeTree$TypeParameterTT;
.super Lannotator/find/Insertions$TypeTree;
.source "Insertions.java"

# interfaces
.implements Lcom/sun/source/tree/TypeParameterTree;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lannotator/find/Insertions$TypeTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TypeParameterTT"
.end annotation


# instance fields
.field private final bk:Lscenelib/type/BoundedType$BoundKind;

.field private final bname:Ljava/lang/String;

.field private final bound:Lcom/sun/source/tree/Tree;


# direct methods
.method constructor <init>(Ljava/lang/String;Lscenelib/type/BoundedType$BoundKind;Lannotator/find/Insertions$TypeTree;)V
    .locals 0
    .param p1, "bname"    # Ljava/lang/String;
    .param p2, "bk"    # Lscenelib/type/BoundedType$BoundKind;
    .param p3, "bound"    # Lannotator/find/Insertions$TypeTree;

    .line 1565
    invoke-direct {p0}, Lannotator/find/Insertions$TypeTree;-><init>()V

    .line 1566
    iput-object p1, p0, Lannotator/find/Insertions$TypeTree$TypeParameterTT;->bname:Ljava/lang/String;

    .line 1567
    iput-object p2, p0, Lannotator/find/Insertions$TypeTree$TypeParameterTT;->bk:Lscenelib/type/BoundedType$BoundKind;

    .line 1568
    iput-object p3, p0, Lannotator/find/Insertions$TypeTree$TypeParameterTT;->bound:Lcom/sun/source/tree/Tree;

    .line 1569
    return-void
.end method


# virtual methods
.method public accept(Lcom/sun/source/tree/TreeVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/sun/source/tree/TreeVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    .line 1576
    .local p1, "visitor":Lcom/sun/source/tree/TreeVisitor;, "Lcom/sun/source/tree/TreeVisitor<TR;TD;>;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-interface {p1, p0, p2}, Lcom/sun/source/tree/TreeVisitor;->visitTypeParameter(Lcom/sun/source/tree/TypeParameterTree;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/AnnotationTree;",
            ">;"
        }
    .end annotation

    .line 1589
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/sun/source/tree/Tree;",
            ">;"
        }
    .end annotation

    .line 1584
    iget-object v0, p0, Lannotator/find/Insertions$TypeTree$TypeParameterTT;->bound:Lcom/sun/source/tree/Tree;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getKind()Lcom/sun/source/tree/Tree$Kind;
    .locals 1

    .line 1572
    sget-object v0, Lcom/sun/source/tree/Tree$Kind;->TYPE_PARAMETER:Lcom/sun/source/tree/Tree$Kind;

    return-object v0
.end method

.method public getName()Ljavax/lang/model/element/Name;
    .locals 2

    .line 1580
    new-instance v0, Lannotator/find/Insertions$TypeTree$TypeName;

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$TypeParameterTT;->bname:Ljava/lang/String;

    invoke-direct {v0, v1}, Lannotator/find/Insertions$TypeTree$TypeName;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$TypeParameterTT;->bname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lannotator/find/Insertions$TypeTree$TypeParameterTT;->bk:Lscenelib/type/BoundedType$BoundKind;

    invoke-virtual {v2}, Lscenelib/type/BoundedType$BoundKind;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lannotator/find/Insertions$TypeTree$TypeParameterTT;->bound:Lcom/sun/source/tree/Tree;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
