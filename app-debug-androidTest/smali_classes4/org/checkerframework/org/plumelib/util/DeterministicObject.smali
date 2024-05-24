.class public Lorg/checkerframework/org/plumelib/util/DeterministicObject;
.super Ljava/lang/Object;
.source "DeterministicObject.java"


# static fields
.field static counter:I


# instance fields
.field final uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    sput v0, Lorg/checkerframework/org/plumelib/util/DeterministicObject;->counter:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    sget v0, Lorg/checkerframework/org/plumelib/util/DeterministicObject;->counter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lorg/checkerframework/org/plumelib/util/DeterministicObject;->counter:I

    iput v0, p0, Lorg/checkerframework/org/plumelib/util/DeterministicObject;->uid:I

    .line 29
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 39
    iget v0, p0, Lorg/checkerframework/org/plumelib/util/DeterministicObject;->uid:I

    return v0
.end method
