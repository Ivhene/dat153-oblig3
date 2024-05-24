.class Lorg/checkerframework/common/basetype/BaseTypeValidator$1;
.super Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;
.source "BaseTypeValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/common/basetype/BaseTypeValidator;->isValidType(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/source/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner<",
        "Lorg/checkerframework/framework/source/Result;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/basetype/BaseTypeValidator;

.field final synthetic val$qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;


# direct methods
.method constructor <init>(Lorg/checkerframework/common/basetype/BaseTypeValidator;Lorg/checkerframework/framework/type/QualifierHierarchy;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/basetype/BaseTypeValidator;

    .line 118
    iput-object p1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator$1;->this$0:Lorg/checkerframework/common/basetype/BaseTypeValidator;

    iput-object p2, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator$1;->val$qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-direct {p0}, Lorg/checkerframework/framework/type/visitor/SimpleAnnotatedTypeScanner;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator$1;->defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/source/Result;

    move-result-object p1

    return-object p1
.end method

.method protected defaultAction(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Ljava/lang/Void;)Lorg/checkerframework/framework/source/Result;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "aVoid"    # Ljava/lang/Void;

    .line 121
    iget-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator$1;->this$0:Lorg/checkerframework/common/basetype/BaseTypeValidator;

    iget-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeValidator$1;->val$qualifierHierarchy:Lorg/checkerframework/framework/type/QualifierHierarchy;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/common/basetype/BaseTypeValidator;->isTopLevelValidType(Lorg/checkerframework/framework/type/QualifierHierarchy;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic reduce(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 118
    check-cast p1, Lorg/checkerframework/framework/source/Result;

    check-cast p2, Lorg/checkerframework/framework/source/Result;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeValidator$1;->reduce(Lorg/checkerframework/framework/source/Result;Lorg/checkerframework/framework/source/Result;)Lorg/checkerframework/framework/source/Result;

    move-result-object p1

    return-object p1
.end method

.method protected reduce(Lorg/checkerframework/framework/source/Result;Lorg/checkerframework/framework/source/Result;)Lorg/checkerframework/framework/source/Result;
    .locals 1
    .param p1, "r1"    # Lorg/checkerframework/framework/source/Result;
    .param p2, "r2"    # Lorg/checkerframework/framework/source/Result;

    .line 126
    if-nez p1, :cond_1

    .line 127
    if-nez p2, :cond_0

    .line 128
    sget-object v0, Lorg/checkerframework/framework/source/Result;->SUCCESS:Lorg/checkerframework/framework/source/Result;

    return-object v0

    .line 130
    :cond_0
    return-object p2

    .line 131
    :cond_1
    if-nez p2, :cond_2

    .line 132
    return-object p1

    .line 134
    :cond_2
    invoke-virtual {p1, p2}, Lorg/checkerframework/framework/source/Result;->merge(Lorg/checkerframework/framework/source/Result;)Lorg/checkerframework/framework/source/Result;

    move-result-object v0

    return-object v0
.end method
