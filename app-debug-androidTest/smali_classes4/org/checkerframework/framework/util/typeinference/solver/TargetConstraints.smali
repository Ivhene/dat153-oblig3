.class public Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;
.super Ljava/lang/Object;
.source "TargetConstraints.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;,
        Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;,
        Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;
    }
.end annotation


# instance fields
.field public final equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

.field public final subtypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;

.field public final supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

.field public final target:Ljavax/lang/model/type/TypeVariable;


# direct methods
.method public constructor <init>(Ljavax/lang/model/type/TypeVariable;)V
    .locals 1
    .param p1, "target"    # Ljavax/lang/model/type/TypeVariable;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->target:Ljavax/lang/model/type/TypeVariable;

    .line 41
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->equalities:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Equalities;

    .line 42
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->supertypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Supertypes;

    .line 43
    new-instance v0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;

    invoke-direct {v0}, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints;->subtypes:Lorg/checkerframework/framework/util/typeinference/solver/TargetConstraints$Subtypes;

    .line 44
    return-void
.end method
