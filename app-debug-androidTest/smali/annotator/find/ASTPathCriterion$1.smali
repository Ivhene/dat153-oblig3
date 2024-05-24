.class Lannotator/find/ASTPathCriterion$1;
.super Lcom/sun/source/util/SimpleTreeVisitor;
.source "ASTPathCriterion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lannotator/find/ASTPathCriterion;->matchNext(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/source/util/SimpleTreeVisitor<",
        "Ljava/lang/Boolean;",
        "Lcom/sun/source/tree/Tree;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lannotator/find/ASTPathCriterion;


# direct methods
.method constructor <init>(Lannotator/find/ASTPathCriterion;)V
    .locals 0
    .param p1, "this$0"    # Lannotator/find/ASTPathCriterion;

    .line 218
    iput-object p1, p0, Lannotator/find/ASTPathCriterion$1;->this$0:Lannotator/find/ASTPathCriterion;

    invoke-direct {p0}, Lcom/sun/source/util/SimpleTreeVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultAction(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "t1"    # Lcom/sun/source/tree/Tree;
    .param p2, "t2"    # Lcom/sun/source/tree/Tree;

    .line 222
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic defaultAction(Lcom/sun/source/tree/Tree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lannotator/find/ASTPathCriterion$1;->defaultAction(Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "a1"    # Lcom/sun/source/tree/AnnotatedTypeTree;
    .param p2, "t"    # Lcom/sun/source/tree/Tree;

    .line 237
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/AnnotatedTypeTree;

    .line 238
    .local v0, "a2":Lcom/sun/source/tree/AnnotatedTypeTree;
    iget-object v1, p0, Lannotator/find/ASTPathCriterion$1;->this$0:Lannotator/find/ASTPathCriterion;

    invoke-interface {p1}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 239
    invoke-interface {v0}, Lcom/sun/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 238
    invoke-static {v1, v2, v3}, Lannotator/find/ASTPathCriterion;->access$000(Lannotator/find/ASTPathCriterion;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lannotator/find/ASTPathCriterion$1;->visitAnnotatedType(Lcom/sun/source/tree/AnnotatedTypeTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "v"    # Lcom/sun/source/tree/IdentifierTree;
    .param p2, "t"    # Lcom/sun/source/tree/Tree;

    .line 228
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lannotator/find/ASTPathCriterion$1;->visitIdentifier(Lcom/sun/source/tree/IdentifierTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "c1"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "t"    # Lcom/sun/source/tree/Tree;

    .line 252
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/MemberSelectTree;

    .line 253
    .local v0, "c2":Lcom/sun/source/tree/MemberSelectTree;
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getIdentifier()Ljavax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lannotator/find/ASTPathCriterion$1;->this$0:Lannotator/find/ASTPathCriterion;

    .line 255
    invoke-interface {p1}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v2

    .line 256
    invoke-interface {v0}, Lcom/sun/source/tree/MemberSelectTree;->getExpression()Lcom/sun/source/tree/ExpressionTree;

    move-result-object v3

    .line 255
    invoke-static {v1, v2, v3}, Lannotator/find/ASTPathCriterion;->access$000(Lannotator/find/ASTPathCriterion;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 253
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lannotator/find/ASTPathCriterion$1;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;
    .locals 9
    .param p1, "e1"    # Lcom/sun/source/tree/ParameterizedTypeTree;
    .param p2, "t"    # Lcom/sun/source/tree/Tree;

    .line 272
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/ParameterizedTypeTree;

    .line 273
    .local v0, "e2":Lcom/sun/source/tree/ParameterizedTypeTree;
    invoke-interface {v0}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 274
    .local v1, "l2":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getTypeArguments()Ljava/util/List;

    move-result-object v2

    .line 275
    .local v2, "l1":Ljava/util/List;, "Ljava/util/List<+Lcom/sun/source/tree/Tree;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    .line 283
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 275
    if-ne v3, v4, :cond_2

    .line 276
    const/4 v3, 0x0

    .line 277
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/source/tree/Tree;

    .line 278
    .local v6, "t1":Lcom/sun/source/tree/Tree;
    add-int/lit8 v7, v3, 0x1

    .end local v3    # "i":I
    .local v7, "i":I
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/source/tree/Tree;

    .line 279
    .local v3, "t2":Lcom/sun/source/tree/Tree;
    iget-object v8, p0, Lannotator/find/ASTPathCriterion$1;->this$0:Lannotator/find/ASTPathCriterion;

    invoke-static {v8, v6, v3}, Lannotator/find/ASTPathCriterion;->access$000(Lannotator/find/ASTPathCriterion;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v8

    if-nez v8, :cond_0

    return-object v5

    .line 280
    .end local v3    # "t2":Lcom/sun/source/tree/Tree;
    .end local v6    # "t1":Lcom/sun/source/tree/Tree;
    :cond_0
    move v3, v7

    goto :goto_0

    .line 281
    .end local v7    # "i":I
    .local v3, "i":I
    :cond_1
    iget-object v4, p0, Lannotator/find/ASTPathCriterion$1;->this$0:Lannotator/find/ASTPathCriterion;

    invoke-interface {p1}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v5

    invoke-interface {v0}, Lcom/sun/source/tree/ParameterizedTypeTree;->getType()Lcom/sun/source/tree/Tree;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lannotator/find/ASTPathCriterion;->access$000(Lannotator/find/ASTPathCriterion;Lcom/sun/source/tree/Tree;Lcom/sun/source/tree/Tree;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 283
    .end local v3    # "i":I
    :cond_2
    return-object v5
.end method

.method public bridge synthetic visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lannotator/find/ASTPathCriterion$1;->visitParameterizedType(Lcom/sun/source/tree/ParameterizedTypeTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public visitWildcard(Lcom/sun/source/tree/WildcardTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "d1"    # Lcom/sun/source/tree/WildcardTree;
    .param p2, "t"    # Lcom/sun/source/tree/Tree;

    .line 262
    move-object v0, p2

    check-cast v0, Lcom/sun/source/tree/WildcardTree;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visitWildcard(Lcom/sun/source/tree/WildcardTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 218
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lannotator/find/ASTPathCriterion$1;->visitWildcard(Lcom/sun/source/tree/WildcardTree;Lcom/sun/source/tree/Tree;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
