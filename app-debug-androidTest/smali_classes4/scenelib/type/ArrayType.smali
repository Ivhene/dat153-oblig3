.class public Lscenelib/type/ArrayType;
.super Lscenelib/type/Type;
.source "ArrayType.java"


# instance fields
.field private componentType:Lscenelib/type/Type;


# direct methods
.method public constructor <init>(Lscenelib/type/Type;)V
    .locals 0
    .param p1, "componentType"    # Lscenelib/type/Type;

    .line 18
    invoke-direct {p0}, Lscenelib/type/Type;-><init>()V

    .line 19
    iput-object p1, p0, Lscenelib/type/ArrayType;->componentType:Lscenelib/type/Type;

    .line 20
    return-void
.end method


# virtual methods
.method public getComponentType()Lscenelib/type/Type;
    .locals 1

    .line 27
    iget-object v0, p0, Lscenelib/type/ArrayType;->componentType:Lscenelib/type/Type;

    return-object v0
.end method

.method public getKind()Lscenelib/type/Type$Kind;
    .locals 1

    .line 32
    sget-object v0, Lscenelib/type/Type$Kind;->ARRAY:Lscenelib/type/Type$Kind;

    return-object v0
.end method
