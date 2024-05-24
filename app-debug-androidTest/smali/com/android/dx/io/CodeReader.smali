.class public final Lcom/android/dx/io/CodeReader;
.super Ljava/lang/Object;
.source "CodeReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/io/CodeReader$Visitor;
    }
.end annotation


# instance fields
.field private callSiteVisitor:Lcom/android/dx/io/CodeReader$Visitor;

.field private fallbackVisitor:Lcom/android/dx/io/CodeReader$Visitor;

.field private fieldVisitor:Lcom/android/dx/io/CodeReader$Visitor;

.field private methodAndProtoVisitor:Lcom/android/dx/io/CodeReader$Visitor;

.field private methodVisitor:Lcom/android/dx/io/CodeReader$Visitor;

.field private stringVisitor:Lcom/android/dx/io/CodeReader$Visitor;

.field private typeVisitor:Lcom/android/dx/io/CodeReader$Visitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dx/io/CodeReader;->fallbackVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 27
    iput-object v0, p0, Lcom/android/dx/io/CodeReader;->stringVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 28
    iput-object v0, p0, Lcom/android/dx/io/CodeReader;->typeVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 29
    iput-object v0, p0, Lcom/android/dx/io/CodeReader;->fieldVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 30
    iput-object v0, p0, Lcom/android/dx/io/CodeReader;->methodVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 31
    iput-object v0, p0, Lcom/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 32
    iput-object v0, p0, Lcom/android/dx/io/CodeReader;->callSiteVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    return-void
.end method

.method private callVisit([Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/DecodedInstruction;)V
    .locals 3
    .param p1, "all"    # [Lcom/android/dx/io/instructions/DecodedInstruction;
    .param p2, "one"    # Lcom/android/dx/io/instructions/DecodedInstruction;

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "visitor":Lcom/android/dx/io/CodeReader$Visitor;
    sget-object v1, Lcom/android/dx/io/CodeReader$1;->$SwitchMap$com$android$dx$io$IndexType:[I

    invoke-virtual {p2}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    move-result v2

    invoke-static {v2}, Lcom/android/dx/io/OpcodeInfo;->getIndexType(I)Lcom/android/dx/io/IndexType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/dx/io/IndexType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 122
    :pswitch_0
    iget-object v0, p0, Lcom/android/dx/io/CodeReader;->callSiteVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v0, p0, Lcom/android/dx/io/CodeReader;->methodVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    .line 119
    :pswitch_3
    iget-object v0, p0, Lcom/android/dx/io/CodeReader;->fieldVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    .line 118
    :pswitch_4
    iget-object v0, p0, Lcom/android/dx/io/CodeReader;->typeVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    goto :goto_0

    .line 117
    :pswitch_5
    iget-object v0, p0, Lcom/android/dx/io/CodeReader;->stringVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 125
    :goto_0
    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/dx/io/CodeReader;->fallbackVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 129
    :cond_0
    if-eqz v0, :cond_1

    .line 130
    invoke-interface {v0, p1, p2}, Lcom/android/dx/io/CodeReader$Visitor;->visit([Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/DecodedInstruction;)V

    .line 132
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setAllVisitors(Lcom/android/dx/io/CodeReader$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/io/CodeReader$Visitor;

    .line 38
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->fallbackVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 39
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->stringVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 40
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->typeVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 41
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->fieldVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 42
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->methodVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 43
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 44
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->callSiteVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 45
    return-void
.end method

.method public setCallSiteVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/io/CodeReader$Visitor;

    .line 90
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->callSiteVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 91
    return-void
.end method

.method public setFallbackVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/io/CodeReader$Visitor;

    .line 52
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->fallbackVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 53
    return-void
.end method

.method public setFieldVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/io/CodeReader$Visitor;

    .line 73
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->fieldVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 74
    return-void
.end method

.method public setMethodAndProtoVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/io/CodeReader$Visitor;

    .line 85
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->methodAndProtoVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 86
    return-void
.end method

.method public setMethodVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/io/CodeReader$Visitor;

    .line 80
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->methodVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 81
    return-void
.end method

.method public setStringVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/io/CodeReader$Visitor;

    .line 59
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->stringVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 60
    return-void
.end method

.method public setTypeVisitor(Lcom/android/dx/io/CodeReader$Visitor;)V
    .locals 0
    .param p1, "visitor"    # Lcom/android/dx/io/CodeReader$Visitor;

    .line 66
    iput-object p1, p0, Lcom/android/dx/io/CodeReader;->typeVisitor:Lcom/android/dx/io/CodeReader$Visitor;

    .line 67
    return-void
.end method

.method public visitAll([Lcom/android/dx/io/instructions/DecodedInstruction;)V
    .locals 3
    .param p1, "decodedInstructions"    # [Lcom/android/dx/io/instructions/DecodedInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dex/DexException;
        }
    .end annotation

    .line 95
    array-length v0, p1

    .line 97
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 98
    aget-object v2, p1, v1

    .line 99
    .local v2, "one":Lcom/android/dx/io/instructions/DecodedInstruction;
    if-nez v2, :cond_0

    .line 100
    goto :goto_1

    .line 103
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/dx/io/CodeReader;->callVisit([Lcom/android/dx/io/instructions/DecodedInstruction;Lcom/android/dx/io/instructions/DecodedInstruction;)V

    .line 97
    .end local v2    # "one":Lcom/android/dx/io/instructions/DecodedInstruction;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public visitAll([S)V
    .locals 1
    .param p1, "encodedInstructions"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dex/DexException;
        }
    .end annotation

    .line 108
    nop

    .line 109
    invoke-static {p1}, Lcom/android/dx/io/instructions/DecodedInstruction;->decodeAll([S)[Lcom/android/dx/io/instructions/DecodedInstruction;

    move-result-object v0

    .line 110
    .local v0, "decodedInstructions":[Lcom/android/dx/io/instructions/DecodedInstruction;
    invoke-virtual {p0, v0}, Lcom/android/dx/io/CodeReader;->visitAll([Lcom/android/dx/io/instructions/DecodedInstruction;)V

    .line 111
    return-void
.end method