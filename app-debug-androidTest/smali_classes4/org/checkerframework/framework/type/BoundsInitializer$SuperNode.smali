.class Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;
.super Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SuperNode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1055
    invoke-direct {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;-><init>()V

    .line 1056
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->Super:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;->kind:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 1057
    sget-object v0, Ljavax/lang/model/type/TypeKind;->WILDCARD:Ljavax/lang/model/type/TypeKind;

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;->typeKind:Ljavax/lang/model/type/TypeKind;

    .line 1058
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;)V
    .locals 0
    .param p1, "template"    # Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;

    .line 1061
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)V

    .line 1062
    return-void
.end method


# virtual methods
.method public copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    .locals 1

    .line 1076
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$SuperNode;)V

    return-object v0
.end method

.method public getType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1071
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->getSuperBound()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 1
    .param p1, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "replacement"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1066
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedWildcardType;->setSuperBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1067
    return-void
.end method
