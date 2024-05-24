.class Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$1;
.super Ljava/lang/Object;
.source "SupertypesSolver.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;->targetToTypeLubs(Ljava/util/Set;Lorg/checkerframework/framework/util/typeinference/solver/ConstraintMap;Lorg/checkerframework/framework/type/AnnotatedTypeFactory;)Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$Lubs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljavax/lang/model/type/TypeVariable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;

.field final synthetic val$types:Ljavax/lang/model/util/Types;


# direct methods
.method constructor <init>(Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;Ljavax/lang/model/util/Types;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;

    .line 230
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$1;->this$0:Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver;

    iput-object p2, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$1;->val$types:Ljavax/lang/model/util/Types;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 230
    check-cast p1, Ljavax/lang/model/type/TypeVariable;

    check-cast p2, Ljavax/lang/model/type/TypeVariable;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$1;->compare(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;)I

    move-result p1

    return p1
.end method

.method public compare(Ljavax/lang/model/type/TypeVariable;Ljavax/lang/model/type/TypeVariable;)I
    .locals 1
    .param p1, "o1"    # Ljavax/lang/model/type/TypeVariable;
    .param p2, "o2"    # Ljavax/lang/model/type/TypeVariable;

    .line 233
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$1;->val$types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p1, p2}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    const/4 v0, -0x1

    return v0

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/SupertypesSolver$1;->val$types:Ljavax/lang/model/util/Types;

    invoke-interface {v0, p2, p1}, Ljavax/lang/model/util/Types;->isSubtype(Ljavax/lang/model/type/TypeMirror;Ljavax/lang/model/type/TypeMirror;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 236
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
