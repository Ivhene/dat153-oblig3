.class public Lorg/checkerframework/common/util/report/ReportVisitor$ReportTypeValidator;
.super Lorg/checkerframework/common/basetype/BaseTypeValidator;
.source "ReportVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/report/ReportVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReportTypeValidator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/util/report/ReportVisitor;


# direct methods
.method public constructor <init>(Lorg/checkerframework/common/util/report/ReportVisitor;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/util/report/ReportVisitor;
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

    .line 316
    .local p3, "visitor":Lorg/checkerframework/common/basetype/BaseTypeVisitor;, "Lorg/checkerframework/common/basetype/BaseTypeVisitor<*>;"
    iput-object p1, p0, Lorg/checkerframework/common/util/report/ReportVisitor$ReportTypeValidator;->this$0:Lorg/checkerframework/common/util/report/ReportVisitor;

    .line 317
    invoke-direct {p0, p2, p3, p4}, Lorg/checkerframework/common/basetype/BaseTypeValidator;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/common/basetype/BaseTypeVisitor;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)V

    .line 318
    return-void
.end method


# virtual methods
.method public bridge synthetic visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 312
    check-cast p2, Lcom/sun/source/tree/Tree;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/util/report/ReportVisitor$ReportTypeValidator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;
    .param p2, "tree"    # Lcom/sun/source/tree/Tree;

    .line 322
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;->getUnderlyingType()Ljavax/lang/model/type/DeclaredType;

    move-result-object v0

    invoke-interface {v0}, Ljavax/lang/model/type/DeclaredType;->asElement()Ljavax/lang/model/element/Element;

    move-result-object v0

    .line 323
    .local v0, "member":Ljavax/lang/model/element/Element;
    iget-object v1, p0, Lorg/checkerframework/common/util/report/ReportVisitor$ReportTypeValidator;->this$0:Lorg/checkerframework/common/util/report/ReportVisitor;

    invoke-static {v1, p2, v0}, Lorg/checkerframework/common/util/report/ReportVisitor;->access$000(Lorg/checkerframework/common/util/report/ReportVisitor;Lcom/sun/source/tree/Tree;Ljavax/lang/model/element/Element;)V

    .line 325
    invoke-super {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->visitDeclared(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedDeclaredType;Lcom/sun/source/tree/Tree;)Ljava/lang/Void;

    move-result-object v1

    return-object v1
.end method
