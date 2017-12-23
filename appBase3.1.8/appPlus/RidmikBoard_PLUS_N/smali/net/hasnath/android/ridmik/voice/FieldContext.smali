.class public Lnet/hasnath/android/ridmik/voice/FieldContext;
.super Ljava/lang/Object;
.source "FieldContext.java"


# static fields
.field private static final DBG:Z = false

.field static final ENABLED_LANGUAGES:Ljava/lang/String; = "enabledLanguages"

.field static final FIELD_ID:Ljava/lang/String; = "fieldId"

.field static final FIELD_NAME:Ljava/lang/String; = "fieldName"

.field static final HINT:Ljava/lang/String; = "hint"

.field static final IME_OPTIONS:Ljava/lang/String; = "imeOptions"

.field static final INPUT_TYPE:Ljava/lang/String; = "inputType"

.field static final LABEL:Ljava/lang/String; = "label"

.field static final PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field static final SELECTED_LANGUAGE:Ljava/lang/String; = "selectedLanguage"

.field static final SINGLE_LINE:Ljava/lang/String; = "singleLine"


# instance fields
.field mFieldInfo:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p2, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p3, "selectedLanguage"    # Ljava/lang/String;
    .param p4, "enabledLanguages"    # [Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/hasnath/android/ridmik/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    .line 49
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p2, v0}, Lnet/hasnath/android/ridmik/voice/FieldContext;->addEditorInfoToBundle(Landroid/view/inputmethod/EditorInfo;Landroid/os/Bundle;)V

    .line 50
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p1, v0}, Lnet/hasnath/android/ridmik/voice/FieldContext;->addInputConnectionToBundle(Landroid/view/inputmethod/InputConnection;Landroid/os/Bundle;)V

    .line 51
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-static {p3, p4, v0}, Lnet/hasnath/android/ridmik/voice/FieldContext;->addLanguageInfoToBundle(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    return-void
.end method

.method private static addEditorInfoToBundle(Landroid/view/inputmethod/EditorInfo;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "info"    # Landroid/view/inputmethod/EditorInfo;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 63
    if-nez p0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 67
    :cond_0
    const-string v0, "label"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->label:Ljava/lang/CharSequence;

    invoke-static {v1}, Lnet/hasnath/android/ridmik/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v0, "hint"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->hintText:Ljava/lang/CharSequence;

    invoke-static {v1}, Lnet/hasnath/android/ridmik/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v0, "packageName"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hasnath/android/ridmik/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "fieldId"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 71
    const-string v0, "fieldName"

    iget-object v1, p0, Landroid/view/inputmethod/EditorInfo;->fieldName:Ljava/lang/String;

    invoke-static {v1}, Lnet/hasnath/android/ridmik/voice/FieldContext;->safeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "inputType"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v0, "imeOptions"

    iget v1, p0, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static addInputConnectionToBundle(Landroid/view/inputmethod/InputConnection;Landroid/os/Bundle;)V
    .locals 4
    .param p0, "conn"    # Landroid/view/inputmethod/InputConnection;
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 78
    if-nez p0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    new-instance v2, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v2}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    invoke-interface {p0, v2, v1}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 83
    .local v0, "et":Landroid/view/inputmethod/ExtractedText;
    if-eqz v0, :cond_0

    .line 86
    const-string v2, "singleLine"

    iget v3, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private static addLanguageInfoToBundle(Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p0, "selectedLanguage"    # Ljava/lang/String;
    .param p1, "enabledLanguages"    # [Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 91
    const-string v0, "selectedLanguage"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v0, "enabledLanguages"

    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private static safeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 56
    if-nez p0, :cond_0

    .line 57
    const-string v0, ""

    .line 59
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lnet/hasnath/android/ridmik/voice/FieldContext;->mFieldInfo:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
