.class Lorg/checkerframework/checker/index/OffsetDependentTypesHelper$1;
.super Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;
.source "OffsetDependentTypesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;->createDependentTypesTreeAnnotator(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/type/treeannotator/TreeAnnotator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;


# direct methods
.method constructor <init>(Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;
    .param p2, "arg0"    # Lorg/checkerframework/framework/type/AnnotatedTypeFactory;
    .param p3, "arg1"    # Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;

    .line 78
    iput-object p1, p0, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper$1;->this$0:Lorg/checkerframework/checker/index/OffsetDependentTypesHelper;

    invoke-direct {p0, p2, p3}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeFactory;Lorg/checkerframework/framework/util/dependenttypes/DependentTypesHelper;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 78
    check-cast p2, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/checker/index/OffsetDependentTypesHelper$1;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;
    .locals 1
    .param p1, "tree"    # Lcom/sun/source/tree/MemberSelectTree;
    .param p2, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 84
    invoke-static {p1}, Lorg/checkerframework/javacutil/TreeUtils;->isArrayLengthAccess(Lcom/sun/source/tree/Tree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/checkerframework/framework/util/dependenttypes/DependentTypesTreeAnnotator;->visitMemberSelect(Lcom/sun/source/tree/MemberSelectTree;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
