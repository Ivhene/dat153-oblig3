.class Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
.super Ljava/lang/Object;
.source "BaseTypeVisitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/basetype/BaseTypeVisitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FoundRequired"
.end annotation


# instance fields
.field public final found:Ljava/lang/String;

.field public final required:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 2
    .param p1, "found"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "required"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2361
    invoke-static {p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$000(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2362
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    .line 2363
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    goto :goto_0

    .line 2365
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    .line 2366
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    .line 2368
    :goto_0
    return-void
.end method

.method private constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)V
    .locals 2
    .param p1, "found"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "required"    # Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    .line 2371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2372
    invoke-static {p1, p2}, Lorg/checkerframework/common/basetype/BaseTypeVisitor;->access$100(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2373
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    .line 2374
    invoke-virtual {p2, v0}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    goto :goto_0

    .line 2376
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->found:Ljava/lang/String;

    .line 2377
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;->required:Ljava/lang/String;

    .line 2379
    :goto_0
    return-void
.end method

.method static of(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    .locals 1
    .param p0, "found"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "required"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 2386
    new-instance v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-object v0
.end method

.method static of(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;
    .locals 1
    .param p0, "found"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p1, "required"    # Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;

    .line 2395
    new-instance v0, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;

    invoke-direct {v0, p0, p1}, Lorg/checkerframework/common/basetype/BaseTypeVisitor$FoundRequired;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeParameterBounds;)V

    return-object v0
.end method
