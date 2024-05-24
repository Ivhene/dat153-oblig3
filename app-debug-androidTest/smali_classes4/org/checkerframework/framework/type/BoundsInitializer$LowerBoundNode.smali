.class Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;
.super Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LowerBoundNode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1112
    invoke-direct {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;-><init>()V

    .line 1113
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->LowerBound:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;->kind:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 1114
    sget-object v0, Ljavax/lang/model/type/TypeKind;->TYPEVAR:Ljavax/lang/model/type/TypeKind;

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;->typeKind:Ljavax/lang/model/type/TypeKind;

    .line 1115
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;)V
    .locals 0
    .param p1, "template"    # Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;

    .line 1118
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)V

    .line 1119
    return-void
.end method


# virtual methods
.method public copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    .locals 1

    .line 1139
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$LowerBoundNode;)V

    return-object v0
.end method

.method public getType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1129
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1130
    .local v0, "parentAtv":Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1131
    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getLowerBoundField()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1

    .line 1134
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-static {v1}, Lorg/checkerframework/framework/type/BoundsInitializer;->access$200(Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v1

    return-object v1
.end method

.method public setType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 1
    .param p1, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "replacement"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1123
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->setLowerBound(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1124
    return-void
.end method
