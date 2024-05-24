.class final Lorg/checkerframework/org/apache/commons/text/lookup/NullStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "NullStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/NullStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/NullStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/NullStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/NullStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/NullStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    return-object v0
.end method
