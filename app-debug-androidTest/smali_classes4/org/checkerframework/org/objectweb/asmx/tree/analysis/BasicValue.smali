.class public Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;
.super Ljava/lang/Object;
.source "BasicValue.java"

# interfaces
.implements Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;


# static fields
.field public static final DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

.field public static final FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

.field public static final INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

.field public static final LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

.field public static final REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

.field public static final RETURNADDRESS_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

.field public static final UNINITIALIZED_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;


# instance fields
.field private type:Lorg/checkerframework/org/objectweb/asmx/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 45
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/Type;->INT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-direct {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->INT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 47
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/Type;->FLOAT_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-direct {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->FLOAT_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 49
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/Type;->LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-direct {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->LONG_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 51
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    sget-object v2, Lorg/checkerframework/org/objectweb/asmx/Type;->DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-direct {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->DOUBLE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 53
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    const-string v2, "Ljava/lang/Object;"

    invoke-static {v2}, Lorg/checkerframework/org/objectweb/asmx/Type;->getType(Ljava/lang/String;)Lorg/checkerframework/org/objectweb/asmx/Type;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    .line 55
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;-><init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/Type;)V
    .locals 0
    .param p1, "type"    # Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    .line 61
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 77
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 78
    return v0

    .line 79
    :cond_0
    instance-of v1, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-nez v1, :cond_2

    .line 81
    move-object v1, p1

    check-cast v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    iget-object v1, v1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    .line 83
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;

    iget-object v0, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v1, v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 86
    :cond_3
    return v2
.end method

.method public getSize()I
    .locals 2

    .line 68
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/Type;->LONG_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    sget-object v1, Lorg/checkerframework/org/objectweb/asmx/Type;->DOUBLE_TYPE:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public getType()Lorg/checkerframework/org/objectweb/asmx/Type;
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->hashCode()I

    move-result v0

    :goto_0
    return v0
.end method

.method public isReference()Z
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    if-eqz v0, :cond_1

    .line 73
    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 95
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    if-ne p0, v0, :cond_0

    .line 96
    const-string v0, "."

    return-object v0

    .line 97
    :cond_0
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->RETURNADDRESS_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    if-ne p0, v0, :cond_1

    .line 98
    const-string v0, "A"

    return-object v0

    .line 99
    :cond_1
    sget-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Value;

    if-ne p0, v0, :cond_2

    .line 100
    const-string v0, "R"

    return-object v0

    .line 102
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/BasicValue;->type:Lorg/checkerframework/org/objectweb/asmx/Type;

    invoke-virtual {v0}, Lorg/checkerframework/org/objectweb/asmx/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
