.class final Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;
.super Lorg/checkerframework/common/basetype/BaseTypeValidator;
.source "OptionalVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/checker/optional/OptionalVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OptionalTypeValidator"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/optional/OptionalVisitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 284
    const-class v0, Lorg/checkerframework/checker/optional/OptionalVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/checker/optional/OptionalVisitor;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p2, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p4, "atypeFactory"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/common/basetype/BaseTypeChecker;",
            "Lorg/checkerframework/common/basetype/BaseTypeVisitor<",
            "*>;",
            "Lorg/checkerframework/framework/type/AnnotatedTypeFactory;",
            ")V"
        }
    .end annotation

    .line 289
    .local p3, "visitor":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<*>;"
    iput-object p1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;->this$0:Lorg/checkerframework/checker/optional/OptionalVisitor;

    .line 290
    invoke-direct {p0, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeValidator;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 291
    return-void
.end method


# virtual methods
.method public isValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z
    .locals 6
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 301
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->getUnderlyingType()Ljavax/lang/model/type/TypeMirror;

    move-result-object v0

    .line 302
    .local v0, "tm":Ljavax/lang/model/type/TypeMirror;
    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;->this$0:Lorg/checkerframework/checker/optional/OptionalVisitor;

    invoke-static {v1, v0}, Lorg/checkerframework/checker/optional/OptionalVisitor;->access$000(Lorg/checkerframework/checker/optional/OptionalVisitor;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 303
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 304
    .local v1, "typeArgs":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_2

    .line 306
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 307
    .local v2, "typeArg":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;->this$0:Lorg/checkerframework/checker/optional/OptionalVisitor;

    invoke-static {v4, v2}, Lorg/checkerframework/checker/optional/OptionalVisitor;->access$100(Lorg/checkerframework/checker/optional/OptionalVisitor;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 308
    iget-object v4, p0, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "optional.as.element.type"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v3}, Lorg/checkerframework/framework/source/Result;->warning(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v4, v3, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_0

    .line 311
    .end local v1    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    .end local v2    # "typeArg":Ljavax/lang/model/type/TypeMirror;
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;->this$0:Lorg/checkerframework/checker/optional/OptionalVisitor;

    invoke-static {v1, v0}, Lorg/checkerframework/checker/optional/OptionalVisitor;->access$100(Lorg/checkerframework/checker/optional/OptionalVisitor;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    move-object v1, v0

    check-cast v1, Ljavax/lang/model/type/DeclaredType;

    invoke-interface {v1}, Ljavax/lang/model/type/DeclaredType;->getTypeArguments()Ljava/util/List;

    move-result-object v1

    .line 313
    .restart local v1    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    .line 314
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/lang/model/type/TypeMirror;

    .line 315
    .restart local v2    # "typeArg":Ljavax/lang/model/type/TypeMirror;
    iget-object v4, p0, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;->this$0:Lorg/checkerframework/checker/optional/OptionalVisitor;

    invoke-static {v4, v2}, Lorg/checkerframework/checker/optional/OptionalVisitor;->access$000(Lorg/checkerframework/checker/optional/OptionalVisitor;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 316
    iget-object v4, p0, Lorg/checkerframework/checker/optional/OptionalVisitor$OptionalTypeValidator;->checker:Lorg/checkerframework/common/basetype/BaseTypeChecker;

    const-string v5, "optional.collection"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5, v3}, Lorg/checkerframework/framework/source/Result;->failure(Ljava/lang/String;[Ljava/lang/Object;)Lorg/checkerframework/framework/source/Result;

    move-result-object v3

    invoke-virtual {v4, v3, p2}, Lorg/checkerframework/common/basetype/BaseTypeChecker;->report(Lorg/checkerframework/framework/source/Result;Ljava/lang/Object;)V

    goto :goto_1

    .line 313
    .end local v2    # "typeArg":Ljavax/lang/model/type/TypeMirror;
    :cond_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 311
    .end local v1    # "typeArgs":Ljava/util/List;, "Ljava/util/List<+Ljavax/lang/model/type/TypeMirror;>;"
    :cond_2
    :goto_0
    nop

    .line 319
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValid(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lcom/sun/source/tree/Tree;)Z

    move-result v1

    return v1
.end method
