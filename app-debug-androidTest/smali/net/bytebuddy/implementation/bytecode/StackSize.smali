.class public final enum Lnet/bytebuddy/implementation/bytecode/StackSize;
.super Ljava/lang/Enum;
.source "StackSize.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/implementation/bytecode/StackSize;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/implementation/bytecode/StackSize;

.field public static final enum DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

.field public static final enum SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

.field public static final enum ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;


# instance fields
.field private final size:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lnet/bytebuddy/implementation/bytecode/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 36
    new-instance v1, Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v2, "SINGLE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 41
    new-instance v2, Lnet/bytebuddy/implementation/bytecode/StackSize;

    const-string v3, "DOUBLE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lnet/bytebuddy/implementation/bytecode/StackSize;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 26
    filled-new-array {v0, v1, v2}, [Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    iput p3, p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->size:I

    .line 55
    return-void
.end method

.method public static of(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lnet/bytebuddy/description/type/TypeDefinition;",
            ">;)I"
        }
    .end annotation

    .line 109
    .local p0, "typeDefinitions":Ljava/util/Collection;, "Ljava/util/Collection<+Lnet/bytebuddy/description/type/TypeDefinition;>;"
    const/4 v0, 0x0

    .line 110
    .local v0, "size":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/description/type/TypeDefinition;

    .line 111
    .local v2, "typeDefinition":Lnet/bytebuddy/description/type/TypeDefinition;
    invoke-interface {v2}, Lnet/bytebuddy/description/type/TypeDefinition;->getStackSize()Lnet/bytebuddy/implementation/bytecode/StackSize;

    move-result-object v3

    invoke-virtual {v3}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v3

    add-int/2addr v0, v3

    .line 112
    .end local v2    # "typeDefinition":Lnet/bytebuddy/description/type/TypeDefinition;
    goto :goto_0

    .line 113
    :cond_0
    return v0
.end method

.method public static varargs of([Lnet/bytebuddy/description/type/TypeDefinition;)I
    .locals 1
    .param p0, "typeDefinition"    # [Lnet/bytebuddy/description/type/TypeDefinition;

    .line 99
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->of(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public static of(I)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 3
    .param p0, "size"    # I

    .line 80
    packed-switch p0, :pswitch_data_0

    .line 88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stack size value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :pswitch_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0

    .line 84
    :pswitch_1
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0

    .line 82
    :pswitch_2
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static of(Ljava/lang/Class;)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/implementation/bytecode/StackSize;"
        }
    .end annotation

    .line 64
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_0

    .line 65
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->ZERO:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0

    .line 66
    :cond_0
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_2

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->SINGLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0

    .line 67
    :cond_2
    :goto_0
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->DOUBLE:Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 1

    .line 26
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize;->$VALUES:[Lnet/bytebuddy/implementation/bytecode/StackSize;

    invoke-virtual {v0}, [Lnet/bytebuddy/implementation/bytecode/StackSize;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/implementation/bytecode/StackSize;

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    .line 122
    iget v0, p0, Lnet/bytebuddy/implementation/bytecode/StackSize;->size:I

    return v0
.end method

.method public maximum(Lnet/bytebuddy/implementation/bytecode/StackSize;)Lnet/bytebuddy/implementation/bytecode/StackSize;
    .locals 2
    .param p1, "stackSize"    # Lnet/bytebuddy/implementation/bytecode/StackSize;

    .line 154
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize$1;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 170
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 156
    :pswitch_0
    return-object p1

    .line 158
    :pswitch_1
    sget-object v0, Lnet/bytebuddy/implementation/bytecode/StackSize$1;->$SwitchMap$net$bytebuddy$implementation$bytecode$StackSize:[I

    invoke-virtual {p1}, Lnet/bytebuddy/implementation/bytecode/StackSize;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 165
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 163
    :pswitch_2
    return-object p0

    .line 160
    :pswitch_3
    return-object p1

    .line 168
    :pswitch_4
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public toDecreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    .line 144
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    mul-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method

.method public toIncreasingSize()Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 3

    .line 133
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v1

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/StackSize;->getSize()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;-><init>(II)V

    return-object v0
.end method
