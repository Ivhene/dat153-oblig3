.class abstract Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
.super Ljava/lang/Object;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "BoundPathNode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;
    }
.end annotation


# instance fields
.field public kind:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

.field public typeKind:Ljavax/lang/model/type/TypeKind;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;)V
    .locals 1
    .param p1, "template"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;

    .line 963
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 964
    iget-object v0, p1, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->kind:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->kind:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    .line 965
    iget-object v0, p1, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->typeKind:Ljavax/lang/model/type/TypeKind;

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->typeKind:Ljavax/lang/model/type/TypeKind;

    .line 966
    return-void
.end method


# virtual methods
.method public abstract copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;
.end method

.method public abstract getType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
.end method

.method public next(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 2
    .param p1, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 974
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->typeKind:Ljavax/lang/model/type/TypeKind;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lorg/checkerframework/framework/type/BoundsInitializer;->abortIfParentNotKind(Ljavax/lang/model/type/TypeKind;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 975
    invoke-virtual {p0, p1}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->getType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    move-result-object v0

    return-object v0
.end method

.method public replaceType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 1
    .param p1, "parent"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "replacement"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 980
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->typeKind:Ljavax/lang/model/type/TypeKind;

    invoke-static {v0, p2, p1}, Lorg/checkerframework/framework/type/BoundsInitializer;->abortIfParentNotKind(Ljavax/lang/model/type/TypeKind;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    .line 981
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->setType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V

    .line 982
    return-void
.end method

.method public abstract setType(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 970
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode;->kind:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPathNode$Kind;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
