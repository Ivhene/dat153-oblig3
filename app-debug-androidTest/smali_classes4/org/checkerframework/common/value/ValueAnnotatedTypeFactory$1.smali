.class Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;
.super Lorg/checkerframework/framework/type/DefaultTypeHierarchy;
.source "ValueAnnotatedTypeFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;->createTypeHierarchy()Lorg/checkerframework/framework/type/TypeHierarchy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;


# direct methods
.method constructor <init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/QualifierHierarchy;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;
    .param p2, "checker"    # Lorg/checkerframework/common/basetype/BaseTypeChecker;
    .param p3, "qualifierHierarchy"    # Lorg/checkerframework/framework/type/QualifierHierarchy;
    .param p4, "ignoreRawTypes"    # Z
    .param p5, "invariantArrayComponents"    # Z

    .line 278
    iput-object p1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->this$0:Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/checkerframework/framework/type/DefaultTypeHierarchy;-><init>(Lorg/checkerframework/common/basetype/BaseTypeChecker;Lorg/checkerframework/framework/type/QualifierHierarchy;ZZ)V

    return-void
.end method


# virtual methods
.method public createEqualityComparer()Lorg/checkerframework/framework/type/StructuralEqualityComparer;
    .locals 2

    .line 281
    new-instance v0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;

    iget-object v1, p0, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;->typeargVisitHistory:Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1$1;-><init>(Lorg/checkerframework/common/value/ValueAnnotatedTypeFactory$1;Lorg/checkerframework/framework/type/StructuralEqualityVisitHistory;)V

    return-object v0
.end method
