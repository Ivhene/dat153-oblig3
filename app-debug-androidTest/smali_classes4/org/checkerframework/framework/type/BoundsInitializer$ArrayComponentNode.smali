.class Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;
.super Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrayComponentNode"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1145
    invoke-direct {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;-><init>()V

    .line 1146
    sget-object v0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->ArrayComponent:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;->kind:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 1147
    sget-object v0, Ljavax/lang/model/type/TypeKind;->ARRAY:Ljavax/lang/model/type/TypeKind;

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;->typeKind:Ljavax/lang/model/type/TypeKind;

    .line 1148
    return-void
.end method

.method constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;)V
    .locals 0
    .param p1, "template"    # Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;

    .line 1151
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)V

    .line 1152
    return-void
.end method


# virtual methods
.method public copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
    .locals 1

    .line 1166
    new-instance v0, Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;-><init>(Lorg/checkerframework/framework/type/BoundsInitializer$ArrayComponentNode;)V

    return-object v0
.end method

.method public getType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p1, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 1161
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->getComponentType()Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public setType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 1
    .param p1, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "replacement"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 1156
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;

    invoke-virtual {v0, p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedArrayType;->setComponentType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 1157
    return-void
.end method