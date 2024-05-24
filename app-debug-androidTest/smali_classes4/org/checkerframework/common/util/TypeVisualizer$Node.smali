.class Lorg/checkerframework/common/util/TypeVisualizer$Node;
.super Ljava/lang/Object;
.source "TypeVisualizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/common/util/TypeVisualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Node"
.end annotation


# instance fields
.field private final type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;


# direct methods
.method private constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lorg/checkerframework/common/util/TypeVisualizer$Node;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    .line 181
    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;Lorg/checkerframework/common/util/TypeVisualizer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .param p2, "x1"    # Lorg/checkerframework/common/util/TypeVisualizer$1;

    .line 176
    invoke-direct {p0, p1}, Lorg/checkerframework/common/util/TypeVisualizer$Node;-><init>(Lorg/checkerframework/framework/type/AnnotatedTypeMirror;)V

    return-void
.end method

.method static synthetic access$100(Lorg/checkerframework/common/util/TypeVisualizer$Node;)Lorg/checkerframework/framework/type/AnnotatedTypeMirror;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/common/util/TypeVisualizer$Node;

    .line 176
    iget-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Node;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 191
    return v0

    .line 193
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/common/util/TypeVisualizer$Node;

    if-eqz v1, :cond_2

    .line 194
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/common/util/TypeVisualizer$Node;

    iget-object v1, v1, Lorg/checkerframework/common/util/TypeVisualizer$Node;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    iget-object v2, p0, Lorg/checkerframework/common/util/TypeVisualizer$Node;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 197
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/checkerframework/common/util/TypeVisualizer$Node;->type:Lorg/checkerframework/framework/type/AnnotatedTypeMirror;

    invoke-virtual {v0}, Lorg/checkerframework/framework/type/AnnotatedTypeMirror;->hashCode()I

    move-result v0

    return v0
.end method
