.class public final enum Lorg/checkerframework/framework/util/Contract$Kind;
.super Ljava/lang/Enum;
.source "Contract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/framework/util/Contract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/checkerframework/framework/util/Contract$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/checkerframework/framework/util/Contract$Kind;

.field public static final enum CONDITIONALPOSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

.field public static final enum POSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

.field public static final enum PRECONDITION:Lorg/checkerframework/framework/util/Contract$Kind;


# instance fields
.field public final errorKey:Ljava/lang/String;

.field public final expressionElementName:Ljava/lang/String;

.field public final frameworkContractClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final frameworkContractsClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field

.field public final metaAnnotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 152
    new-instance v8, Lorg/checkerframework/framework/util/Contract$Kind;

    const-string v1, "PRECONDITION"

    const/4 v2, 0x0

    const-string v3, "precondition"

    const-class v4, Lorg/checkerframework/framework/qual/PreconditionAnnotation;

    const-class v5, Lorg/checkerframework/framework/qual/RequiresQualifier;

    const-class v6, Lorg/checkerframework/framework/qual/RequiresQualifiers;

    const-string v7, "value"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/checkerframework/framework/util/Contract$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v8, Lorg/checkerframework/framework/util/Contract$Kind;->PRECONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    .line 159
    new-instance v0, Lorg/checkerframework/framework/util/Contract$Kind;

    const-string v10, "POSTCONDITION"

    const/4 v11, 0x1

    const-string v12, "postcondition"

    const-class v13, Lorg/checkerframework/framework/qual/PostconditionAnnotation;

    const-class v14, Lorg/checkerframework/framework/qual/EnsuresQualifier;

    const-class v15, Lorg/checkerframework/framework/qual/EnsuresQualifiers;

    const-string v16, "value"

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lorg/checkerframework/framework/util/Contract$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/framework/util/Contract$Kind;->POSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    .line 166
    new-instance v1, Lorg/checkerframework/framework/util/Contract$Kind;

    const-string v18, "CONDITIONALPOSTCONDITION"

    const/16 v19, 0x2

    const-string v20, "conditional.postcondition"

    const-class v21, Lorg/checkerframework/framework/qual/ConditionalPostconditionAnnotation;

    const-class v22, Lorg/checkerframework/framework/qual/EnsuresQualifierIf;

    const-class v23, Lorg/checkerframework/framework/qual/EnsuresQualifiersIf;

    const-string v24, "expression"

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lorg/checkerframework/framework/util/Contract$Kind;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v1, Lorg/checkerframework/framework/util/Contract$Kind;->CONDITIONALPOSTCONDITION:Lorg/checkerframework/framework/util/Contract$Kind;

    .line 150
    filled-new-array {v8, v0, v1}, [Lorg/checkerframework/framework/util/Contract$Kind;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/util/Contract$Kind;->$VALUES:[Lorg/checkerframework/framework/util/Contract$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p3, "errorKey"    # Ljava/lang/String;
    .param p7, "expressionElementName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 203
    .local p4, "metaAnnotation":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p5, "frameworkContractClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    .local p6, "frameworkContractsClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    iput-object p3, p0, Lorg/checkerframework/framework/util/Contract$Kind;->errorKey:Ljava/lang/String;

    .line 205
    iput-object p4, p0, Lorg/checkerframework/framework/util/Contract$Kind;->metaAnnotation:Ljava/lang/Class;

    .line 206
    iput-object p5, p0, Lorg/checkerframework/framework/util/Contract$Kind;->frameworkContractClass:Ljava/lang/Class;

    .line 207
    iput-object p6, p0, Lorg/checkerframework/framework/util/Contract$Kind;->frameworkContractsClass:Ljava/lang/Class;

    .line 208
    iput-object p7, p0, Lorg/checkerframework/framework/util/Contract$Kind;->expressionElementName:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/checkerframework/framework/util/Contract$Kind;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 150
    const-class v0, Lorg/checkerframework/framework/util/Contract$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/framework/util/Contract$Kind;

    return-object v0
.end method

.method public static values()[Lorg/checkerframework/framework/util/Contract$Kind;
    .locals 1

    .line 150
    sget-object v0, Lorg/checkerframework/framework/util/Contract$Kind;->$VALUES:[Lorg/checkerframework/framework/util/Contract$Kind;

    invoke-virtual {v0}, [Lorg/checkerframework/framework/util/Contract$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/framework/util/Contract$Kind;

    return-object v0
.end method
