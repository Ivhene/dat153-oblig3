.class public final Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;
.super Lorg/checkerframework/org/apache/bcel/generic/Type;
.source "DOUBLE_Upper.java"


# static fields
.field private static final singleton:Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;->singleton:Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 35
    const/16 v0, 0xf

    const-string v1, "Double_Upper"

    invoke-direct {p0, v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/Type;-><init>(BLjava/lang/String;)V

    .line 36
    return-void
.end method

.method public static theInstance()Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;
    .locals 1

    .line 40
    sget-object v0, Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;->singleton:Lorg/checkerframework/org/apache/bcel/verifier/statics/DOUBLE_Upper;

    return-object v0
.end method
