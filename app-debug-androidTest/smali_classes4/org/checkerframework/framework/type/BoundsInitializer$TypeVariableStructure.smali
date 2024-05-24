.class Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;
.super Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;
.source "BoundsInitializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/type/BoundsInitializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TypeVariableStructure"
.end annotation


# instance fields
.field public final annotatedTypeVar:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

.field public immediateBoundTypeVars:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;",
            ">;"
        }
    .end annotation
.end field

.field private final parent:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

.field public final typeVar:Ljavax/lang/model/type/TypeVariable;


# direct methods
.method public constructor <init>(Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;)V
    .locals 1
    .param p1, "parent"    # Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;
    .param p2, "annotatedTypeVar"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 892
    invoke-direct {p0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;-><init>()V

    .line 889
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->immediateBoundTypeVars:Ljava/util/Set;

    .line 893
    iput-object p1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->parent:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    .line 894
    invoke-virtual {p2}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;->getUnderlyingType()Ljavax/lang/model/type/TypeVariable;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->typeVar:Ljavax/lang/model/type/TypeVariable;

    .line 895
    iput-object p2, p0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->annotatedTypeVar:Lorg/checkerframework/framework/type/AnnotatedTypeMirror$AnnotatedTypeVariable;

    .line 896
    return-void
.end method

.method static synthetic access$400(Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;)Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;

    .line 866
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->parent:Lorg/checkerframework/framework/type/BoundsInitializer$BoundStructure;

    return-object v0
.end method


# virtual methods
.method public addTypeVar(Ljavax/lang/model/type/TypeVariable;)V
    .locals 2
    .param p1, "typeVariable"    # Ljavax/lang/model/type/TypeVariable;

    .line 900
    iget-object v0, p0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->currentPath:Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;->copy()Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;

    move-result-object v0

    .line 901
    .local v0, "copy":Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->pathToTypeVar:Ljava/util/Map;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    invoke-static {v0}, Lorg/checkerframework/framework/type/BoundsInitializer;->access$700(Lorg/checkerframework/framework/type/BoundsInitializer$BoundPath;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 904
    iget-object v1, p0, Lorg/checkerframework/framework/type/BoundsInitializer$TypeVariableStructure;->immediateBoundTypeVars:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_0
    return-void
.end method
